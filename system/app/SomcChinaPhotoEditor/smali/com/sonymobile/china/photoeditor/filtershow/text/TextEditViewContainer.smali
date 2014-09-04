.class public Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;
.super Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;
.source "TextEditViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;,
        Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;,
        Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextFilterDataChangedListener;,
        Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;,
        Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextPropertyChangedListener;
    }
.end annotation


# static fields
.field private static final EDIT_STATE:I = 0x2

.field private static final IDLE_STATE:I = 0x0

.field private static final MIN_TIME_BEFORE_MOVE_EVENT:J = 0x96L

.field private static final MOVE_STATE:I = 0x1


# instance fields
.field private mCurrentProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

.field private mEditChild:I

.field private mFilterDataChangedListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextFilterDataChangedListener;

.field private mIsEmpty:Z

.field private mIsLongTouch:Z

.field private mIsMoveTouch:Z

.field private mLandLP:Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

.field private mLastDownEvent:Landroid/view/MotionEvent;

.field private mLastMoveEvent:Landroid/view/MotionEvent;

.field private mPendingCheckForLongPress:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;

.field private mPortLP:Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

.field private mPropertyListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextPropertyChangedListener;

.field private mSelectedChild:I

.field private mState:I

.field private mTextChangListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;

.field private mTextWatcher:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    .line 37
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    .line 39
    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I

    .line 49
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsMoveTouch:Z

    .line 51
    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsLongTouch:Z

    .line 57
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLandLP:Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .line 59
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mPortLP:Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsEmpty:Z

    .line 63
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mTextWatcher:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;

    .line 129
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mCurrentProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    .prologue
    .line 29
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    return v0
.end method

.method static synthetic access$002(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    return p1
.end method

.method static synthetic access$100(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsEmpty:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsEmpty:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mTextChangListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setFilterData()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;FF)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->retrieveConstitutor(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->removeChildTextFocus()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;
    .param p1, "x1"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->notifyPropertyChanged(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    return-void
.end method

.method static synthetic access$502(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I

    return p1
.end method

.method static synthetic access$600(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setActionBarVisibility(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    return p1
.end method

.method static synthetic access$800(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mCurrentProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsLongTouch:Z

    return p1
.end method

.method private createLongPressCallback()V
    .locals 1

    .prologue
    .line 397
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mPendingCheckForLongPress:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;

    .line 398
    return-void
.end method

.method private isTouchedInView(IFF)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 458
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 459
    const/4 v1, 0x0

    invoke-static {p0, p2, p3, v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->isTransformedTouchPointInView(Landroid/view/ViewGroup;FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v1

    .line 461
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTransformedTouchPointInView(Landroid/view/ViewGroup;FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 9
    .param p0, "vg"    # Landroid/view/ViewGroup;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;
    .param p4, "outLocalPoint"    # Landroid/graphics/PointF;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 470
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p1

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float v2, v5, v6

    .line 471
    .local v2, "localX":F
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float v4, v5, v6

    .line 474
    .local v4, "localY":F
    const/4 v5, 0x2

    new-array v3, v5, [F

    .line 475
    .local v3, "localXY":[F
    aput v2, v3, v7

    .line 476
    aput v4, v3, v8

    .line 477
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 478
    .local v0, "inverseMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 479
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 480
    aget v2, v3, v7

    .line 481
    aget v4, v3, v8

    .line 484
    invoke-static {p3, v2, v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->pointInView(Landroid/view/View;FF)Z

    move-result v1

    .line 485
    .local v1, "isInView":Z
    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    .line 486
    invoke-virtual {p4, v2, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 489
    :cond_0
    return v1
.end method

.method private notifyPropertyChanged(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V
    .locals 1
    .param p1, "newValues"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mCurrentProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->set(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    .line 503
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mPropertyListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextPropertyChangedListener;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mPropertyListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextPropertyChangedListener;

    invoke-interface {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextPropertyChangedListener;->onTextPropertyChanged(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    .line 506
    :cond_0
    return-void
.end method

.method public static pointInView(Landroid/view/View;FF)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    const/4 v2, 0x0

    .line 496
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeChildTextFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 420
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 421
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 423
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 424
    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    invoke-virtual {v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setTextFocus(Z)V

    .line 425
    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {v1, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setViewFocus(Z)V

    .line 420
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 429
    :cond_1
    return-void
.end method

.method private removeLongPressCallback()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mPendingCheckForLongPress:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mPendingCheckForLongPress:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 404
    :cond_0
    return-void
.end method

.method private retrieveConstitutor(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 408
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 410
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->isTransformedTouchPointInView(Landroid/view/ViewGroup;FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    .end local v0    # "i":I
    .end local v1    # "view":Landroid/view/View;
    :goto_1
    return v0

    .line 407
    .restart local v0    # "i":I
    .restart local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 416
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private setActionBarVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 620
    return-void
.end method

.method private setFilterData()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mFilterDataChangedListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextFilterDataChangedListener;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mFilterDataChangedListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextFilterDataChangedListener;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getAllTextItem()Ljava/util/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextFilterDataChangedListener;->onTextFilterDataChanged(Ljava/util/Vector;)V

    .line 706
    :cond_0
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 594
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->removeAllViews()V

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsEmpty:Z

    .line 596
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I

    .line 597
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    .line 598
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    .line 599
    return-void
.end method

.method public getAllTextItem()Ljava/util/Vector;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    .line 662
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 663
    .local v3, "list":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;>;"
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildCount()I

    move-result v0

    .line 664
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 665
    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 666
    .local v8, "v":Landroid/view/View;
    instance-of v10, v8, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    if-eqz v10, :cond_1

    .line 667
    new-instance v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;

    invoke-direct {v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;-><init>()V

    .line 668
    .local v2, "item":Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;
    new-array v5, v11, [I

    .line 669
    .local v5, "pPos":[I
    new-array v9, v11, [I

    .line 670
    .local v9, "vPos":[I
    invoke-virtual {p0, v5}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getLocationInWindow([I)V

    .line 671
    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 672
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .line 674
    .local v4, "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    iget v10, v4, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->x:I

    iput v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mX:I

    .line 675
    iget v10, v4, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->y:I

    iput v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mY:I

    .line 676
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    iput v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mW:I

    .line 677
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    iput v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mH:I

    .line 678
    const v10, 0x7f0c008d

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 679
    .local v7, "text":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 680
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    iput v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextPaddingLeft:I

    .line 681
    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    iput v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextPaddingTop:I

    .line 682
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    iput v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextPaddingRight:I

    .line 683
    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    iput v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextPaddingBottom:I

    .line 685
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v10

    iput v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mScaleX:F

    .line 686
    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v10

    iput v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mScaleY:F

    .line 687
    invoke-virtual {v8}, Landroid/view/View;->getRotation()F

    move-result v10

    iput v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mRotation:F

    .line 688
    invoke-virtual {v8}, Landroid/view/View;->getRotationX()F

    move-result v10

    iput v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mRotationX:F

    .line 689
    invoke-virtual {v8}, Landroid/view/View;->getRotationY()F

    move-result v10

    iput v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mRotationY:F

    move-object v10, v8

    .line 690
    check-cast v10, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    invoke-virtual {v10}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->getProperty()Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    move-result-object v6

    .line 691
    .local v6, "property":Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;
    iget v10, v6, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mColor:I

    iput v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextColor:I

    .line 692
    iget v10, v6, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mPortSize:F

    iput v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextPortSize:F

    .line 693
    iget v10, v6, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mLandSize:F

    iput v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextLandSize:F

    .line 694
    iget v10, v6, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mFont:I

    iput v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextFont:I

    .line 695
    check-cast v8, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    .end local v8    # "v":Landroid/view/View;
    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    iput-object v10, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mText:[C

    .line 696
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 664
    .end local v2    # "item":Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;
    .end local v4    # "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    .end local v5    # "pPos":[I
    .end local v6    # "property":Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;
    .end local v7    # "text":Landroid/view/View;
    .end local v9    # "vPos":[I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 699
    :cond_2
    return-object v3
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 602
    const/4 v0, 0x1

    .line 603
    .local v0, "empty":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 604
    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 605
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    if-eqz v3, :cond_1

    .line 606
    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 607
    const/4 v0, 0x0

    .line 612
    :cond_0
    return v0

    .line 603
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 361
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 393
    :pswitch_0
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 363
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 366
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastDownEvent:Landroid/view/MotionEvent;

    .line 369
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mPendingCheckForLongPress:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;

    if-nez v1, :cond_1

    .line 370
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->createLongPressCallback()V

    .line 374
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mPendingCheckForLongPress:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->isTouchedInView(IFF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->removeLongPressCallback()V

    .line 381
    const/4 v1, 0x0

    goto :goto_0

    .line 372
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->removeLongPressCallback()V

    goto :goto_1

    .line 383
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 134
    invoke-super/range {p0 .. p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->isEnabled()Z

    move-result v30

    if-eqz v30, :cond_0

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    .line 138
    .local v26, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    .line 140
    .local v28, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v30

    packed-switch v30, :pswitch_data_0

    .line 355
    .end local v26    # "x":F
    .end local v28    # "y":F
    :cond_0
    :goto_0
    const/16 v30, 0x1

    :goto_1
    return v30

    .line 142
    .restart local v26    # "x":F
    .restart local v28    # "y":F
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastMoveEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastMoveEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->recycle()V

    .line 144
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastMoveEvent:Landroid/view/MotionEvent;

    .line 147
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    .line 148
    const/16 v30, 0x1

    goto :goto_1

    .line 154
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    sub-float v30, v26, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v27

    .line 155
    .local v27, "xOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    sub-float v30, v28, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v29

    .line 156
    .local v29, "yOffset":F
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v23

    .line 158
    .local v23, "touchSlop":I
    mul-float v30, v27, v27

    mul-float v31, v29, v29

    add-float v30, v30, v31

    mul-int v31, v23, v23

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v30, v30, v31

    if-lez v30, :cond_2

    .line 160
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->removeLongPressCallback()V

    .line 162
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I

    move/from16 v30, v0

    if-nez v30, :cond_3

    mul-float v30, v27, v27

    mul-float v31, v29, v29

    add-float v30, v30, v31

    const/high16 v31, 0x44610000

    cmpl-float v30, v30, v31

    if-lez v30, :cond_3

    .line 165
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsMoveTouch:Z

    goto/16 :goto_0

    .line 166
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v30

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v32

    sub-long v30, v30, v32

    const-wide/16 v32, 0x96

    cmp-long v30, v30, v32

    if-lez v30, :cond_0

    .line 169
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/MotionEvent;->getY()F

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->isTouchedInView(IFF)Z

    move-result v30

    if-nez v30, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsMoveTouch:Z

    move/from16 v30, v0

    if-eqz v30, :cond_0

    .line 175
    :cond_5
    const-string v30, "E"

    const-string v31, "in move"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsMoveTouch:Z

    .line 177
    const/16 v20, 0x0

    .line 178
    .local v20, "offsetX":I
    const/16 v21, 0x0

    .line 179
    .local v21, "offsetY":I
    move/from16 v0, v26

    float-to-int v9, v0

    .line 180
    .local v9, "curX":I
    move/from16 v0, v28

    float-to-int v10, v0

    .line 181
    .local v10, "curY":I
    const/4 v13, 0x0

    .line 182
    .local v13, "lastX":I
    const/4 v14, 0x0

    .line 183
    .local v14, "lastY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastMoveEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    if-nez v30, :cond_9

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    move/from16 v0, v30

    float-to-int v13, v0

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    move/from16 v0, v30

    float-to-int v14, v0

    .line 190
    :goto_2
    sub-int v20, v9, v13

    .line 191
    sub-int v21, v10, v14

    .line 192
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 193
    .local v4, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f090020

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 195
    .local v17, "minW":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f09001f

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 197
    .local v16, "minH":I
    instance-of v0, v4, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    move/from16 v30, v0

    if-eqz v30, :cond_8

    .line 198
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .line 199
    .local v15, "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v30

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v31

    sub-int v6, v30, v31

    .line 200
    .local v6, "childW":I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v30

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v31

    sub-int v5, v30, v31

    .line 201
    .local v5, "childH":I
    move/from16 v0, v16

    if-le v0, v5, :cond_6

    .line 202
    move/from16 v16, v5

    .line 204
    :cond_6
    move/from16 v0, v17

    if-le v0, v6, :cond_7

    .line 205
    move/from16 v17, v6

    .line 207
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .line 208
    .local v8, "containerLp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    iget v0, v8, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->width:I

    move/from16 v25, v0

    .line 209
    .local v25, "w":I
    iget v11, v8, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->height:I

    .line 210
    .local v11, "h":I
    iget v0, v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->x:I

    move/from16 v30, v0

    add-int v18, v30, v20

    .line 211
    .local v18, "newX":I
    iget v0, v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->y:I

    move/from16 v30, v0

    add-int v19, v30, v21

    .line 212
    .local v19, "newY":I
    sub-int v30, v17, v6

    move/from16 v0, v18

    move/from16 v1, v30

    if-le v0, v1, :cond_a

    .line 213
    :goto_3
    sub-int v30, v25, v17

    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_b

    .line 214
    :goto_4
    sub-int v30, v16, v5

    move/from16 v0, v19

    move/from16 v1, v30

    if-le v0, v1, :cond_c

    .line 215
    :goto_5
    sub-int v30, v11, v16

    move/from16 v0, v19

    move/from16 v1, v30

    if-ge v0, v1, :cond_d

    .line 216
    :goto_6
    move/from16 v0, v18

    iput v0, v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->x:I

    .line 217
    move/from16 v0, v19

    iput v0, v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->y:I

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 219
    .local v7, "config":Landroid/content/res/Configuration;
    iget v0, v7, Landroid/content/res/Configuration;->orientation:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    move-object/from16 v30, v4

    .line 220
    check-cast v30, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    iget v0, v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->x:I

    move/from16 v31, v0

    iget v0, v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->y:I

    move/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setLandXY(II)V

    .line 224
    :goto_7
    invoke-virtual {v4, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setFilterData()V

    .line 228
    .end local v5    # "childH":I
    .end local v6    # "childW":I
    .end local v7    # "config":Landroid/content/res/Configuration;
    .end local v8    # "containerLp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    .end local v11    # "h":I
    .end local v15    # "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    .end local v18    # "newX":I
    .end local v19    # "newY":I
    .end local v25    # "w":I
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastMoveEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 187
    .end local v4    # "child":Landroid/view/View;
    .end local v16    # "minH":I
    .end local v17    # "minW":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastMoveEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    move/from16 v0, v30

    float-to-int v13, v0

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastMoveEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    move/from16 v0, v30

    float-to-int v14, v0

    goto/16 :goto_2

    .line 212
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "childH":I
    .restart local v6    # "childW":I
    .restart local v8    # "containerLp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    .restart local v11    # "h":I
    .restart local v15    # "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    .restart local v16    # "minH":I
    .restart local v17    # "minW":I
    .restart local v18    # "newX":I
    .restart local v19    # "newY":I
    .restart local v25    # "w":I
    :cond_a
    sub-int v18, v17, v6

    goto :goto_3

    .line 213
    :cond_b
    sub-int v18, v25, v17

    goto :goto_4

    .line 214
    :cond_c
    sub-int v19, v16, v5

    goto :goto_5

    .line 215
    :cond_d
    sub-int v19, v11, v16

    goto :goto_6

    .restart local v7    # "config":Landroid/content/res/Configuration;
    :cond_e
    move-object/from16 v30, v4

    .line 222
    check-cast v30, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    iget v0, v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->x:I

    move/from16 v31, v0

    iget v0, v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->y:I

    move/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setPortXY(II)V

    goto :goto_7

    .line 236
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childH":I
    .end local v6    # "childW":I
    .end local v7    # "config":Landroid/content/res/Configuration;
    .end local v8    # "containerLp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    .end local v9    # "curX":I
    .end local v10    # "curY":I
    .end local v11    # "h":I
    .end local v13    # "lastX":I
    .end local v14    # "lastY":I
    .end local v15    # "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    .end local v16    # "minH":I
    .end local v17    # "minW":I
    .end local v18    # "newX":I
    .end local v19    # "newY":I
    .end local v20    # "offsetX":I
    .end local v21    # "offsetY":I
    .end local v23    # "touchSlop":I
    .end local v25    # "w":I
    .end local v27    # "xOffset":F
    .end local v29    # "yOffset":F
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->removeLongPressCallback()V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastMoveEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    if-eqz v30, :cond_f

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastMoveEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->recycle()V

    .line 240
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastMoveEvent:Landroid/view/MotionEvent;

    .line 243
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsMoveTouch:Z

    move/from16 v30, v0

    if-nez v30, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I

    move/from16 v30, v0

    if-nez v30, :cond_15

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x7f030009

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    .line 247
    .local v24, "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;
    invoke-virtual/range {v24 .. v24}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->init()V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .line 250
    .restart local v8    # "containerLp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    iget v0, v8, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->width:I

    move/from16 v25, v0

    .line 251
    .restart local v25    # "w":I
    iget v11, v8, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->height:I

    .line 252
    .restart local v11    # "h":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f090020

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 254
    .restart local v17    # "minW":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f09001f

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 257
    .restart local v16    # "minH":I
    new-instance v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    const/16 v30, -0x2

    const/16 v31, -0x2

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;-><init>(IIII)V

    .line 262
    .restart local v15    # "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    iget v0, v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->x:I

    move/from16 v30, v0

    sub-int v31, v25, v17

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_10

    .line 263
    sub-int v30, v25, v17

    move/from16 v0, v30

    iput v0, v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->x:I

    .line 265
    :cond_10
    iget v0, v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->y:I

    move/from16 v30, v0

    sub-int v31, v11, v16

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_11

    .line 266
    sub-int v30, v11, v16

    move/from16 v0, v30

    iput v0, v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->y:I

    .line 269
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildCount()I

    move-result v12

    .line 270
    .local v12, "index":I
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    .line 271
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    .line 272
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->removeChildTextFocus()V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 274
    .restart local v7    # "config":Landroid/content/res/Configuration;
    iget v0, v7, Landroid/content/res/Configuration;->orientation:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    .line 275
    iget v0, v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->x:I

    move/from16 v30, v0

    iget v0, v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->y:I

    move/from16 v31, v0

    move-object/from16 v0, v24

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setLandXY(II)V

    .line 279
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setViewFocus(Z)V

    .line 281
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setTextFocus(Z)V

    .line 282
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->focusOnText(Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mCurrentProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->applyProperty(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mTextWatcher:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setTextChangedListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;)V

    .line 285
    const/16 v30, 0x2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I

    .line 286
    const/16 v30, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setActionBarVisibility(I)V

    .line 345
    .end local v7    # "config":Landroid/content/res/Configuration;
    .end local v8    # "containerLp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    .end local v11    # "h":I
    .end local v12    # "index":I
    .end local v15    # "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    .end local v16    # "minH":I
    .end local v17    # "minW":I
    .end local v24    # "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;
    .end local v25    # "w":I
    :cond_12
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsMoveTouch:Z

    move/from16 v30, v0

    if-eqz v30, :cond_13

    .line 346
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsMoveTouch:Z

    .line 348
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsLongTouch:Z

    move/from16 v30, v0

    if-eqz v30, :cond_0

    .line 349
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsLongTouch:Z

    goto/16 :goto_0

    .line 277
    .restart local v7    # "config":Landroid/content/res/Configuration;
    .restart local v8    # "containerLp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    .restart local v11    # "h":I
    .restart local v12    # "index":I
    .restart local v15    # "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    .restart local v16    # "minH":I
    .restart local v17    # "minW":I
    .restart local v24    # "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;
    .restart local v25    # "w":I
    :cond_14
    iget v0, v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->x:I

    move/from16 v30, v0

    iget v0, v15, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->y:I

    move/from16 v31, v0

    move-object/from16 v0, v24

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setPortXY(II)V

    goto :goto_8

    .line 287
    .end local v7    # "config":Landroid/content/res/Configuration;
    .end local v8    # "containerLp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    .end local v11    # "h":I
    .end local v12    # "index":I
    .end local v15    # "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    .end local v16    # "minH":I
    .end local v17    # "minW":I
    .end local v24    # "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;
    .end local v25    # "w":I
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsLongTouch:Z

    move/from16 v30, v0

    if-nez v30, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsMoveTouch:Z

    move/from16 v30, v0

    if-nez v30, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_18

    .line 289
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/MotionEvent;->getY()F

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->isTouchedInView(IFF)Z

    move-result v30

    if-eqz v30, :cond_16

    .line 293
    const/16 v30, 0x2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I

    .line 294
    const/16 v30, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setActionBarVisibility(I)V

    .line 295
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    .line 296
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    .line 297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 298
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    move/from16 v30, v0

    if-eqz v30, :cond_12

    move-object/from16 v30, v24

    .line 299
    check-cast v30, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setViewFocus(Z)V

    move-object/from16 v30, v24

    .line 300
    check-cast v30, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setTextFocus(Z)V

    .line 301
    check-cast v24, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    .end local v24    # "v":Landroid/view/View;
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->focusOnText(Z)V

    goto/16 :goto_9

    .line 304
    :cond_16
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I

    .line 305
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setActionBarVisibility(I)V

    .line 306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 307
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    move/from16 v30, v0

    if-eqz v30, :cond_17

    move-object/from16 v30, v24

    .line 308
    check-cast v30, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setViewFocus(Z)V

    move-object/from16 v30, v24

    .line 309
    check-cast v30, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setTextFocus(Z)V

    .line 310
    check-cast v24, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    .end local v24    # "v":Landroid/view/View;
    const/16 v30, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->focusOnText(Z)V

    .line 312
    :cond_17
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    .line 313
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mCurrentProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->notifyPropertyChanged(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    goto/16 :goto_9

    .line 316
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_12

    .line 317
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLastDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/MotionEvent;->getY()F

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->isTouchedInView(IFF)Z

    move-result v30

    if-nez v30, :cond_12

    .line 321
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I

    .line 322
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setActionBarVisibility(I)V

    .line 323
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 324
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    move/from16 v30, v0

    if-eqz v30, :cond_1a

    move-object/from16 v30, v24

    .line 325
    check-cast v30, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setViewFocus(Z)V

    move-object/from16 v30, v24

    .line 326
    check-cast v30, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->focusOnText(Z)V

    move-object/from16 v30, v24

    .line 327
    check-cast v30, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->getText()Ljava/lang/String;

    move-result-object v22

    .line 328
    .local v22, "text":Ljava/lang/String;
    if-eqz v22, :cond_19

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_1a

    :cond_19
    move-object/from16 v30, v24

    .line 329
    check-cast v30, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mTextWatcher:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->removeTextChangedListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;)V

    .line 331
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->removeView(Landroid/view/View;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildCount()I

    move-result v30

    if-nez v30, :cond_1a

    .line 333
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsEmpty:Z

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mTextChangListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1a

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mTextChangListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;->onTextInPhotoBounds(Z)V

    .line 340
    .end local v22    # "text":Ljava/lang/String;
    :cond_1a
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    .line 341
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mCurrentProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->notifyPropertyChanged(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    goto/16 :goto_9

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reLayoutForRotate(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x3f800000

    .line 509
    const/high16 v3, 0x3f800000

    .line 510
    .local v3, "scale":F
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_1

    .line 511
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLandLP:Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    iget v4, v4, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mPortLP:Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    iget v5, v5, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->width:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 515
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildCount()I

    move-result v1

    .line 516
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 517
    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 518
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    if-eqz v4, :cond_0

    .line 519
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_2

    .line 521
    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->ConvertPortToLand(F)V

    .line 516
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 513
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mPortLP:Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    iget v4, v4, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLandLP:Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    iget v5, v5, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->width:I

    int-to-float v5, v5

    div-float v3, v4, v5

    goto :goto_0

    .line 523
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_2
    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->ConvertLandToPort(F)V

    goto :goto_2

    .line 527
    :cond_3
    return-void
.end method

.method public setLandLp(Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;)V
    .locals 1
    .param p1, "land"    # Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .prologue
    .line 77
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLandLP:Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .line 78
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 554
    invoke-super {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mTextChangListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mTextChangListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;

    invoke-interface {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;->onDisplayBoundsChanged()V

    .line 558
    :cond_0
    return-void
.end method

.method public setOnFilterDataChangedListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextFilterDataChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextFilterDataChangedListener;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mFilterDataChangedListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextFilterDataChangedListener;

    .line 125
    return-void
.end method

.method public setOnTextChangeListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mTextChangListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;

    .line 117
    return-void
.end method

.method public setOnTextPropertyChangeListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextPropertyChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextPropertyChangedListener;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mPropertyListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextPropertyChangedListener;

    .line 121
    return-void
.end method

.method public setPortAndLandLP(Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;)V
    .locals 1
    .param p1, "port"    # Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    .param p2, "land"    # Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .prologue
    .line 68
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    invoke-direct {v0, p2}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mLandLP:Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .line 69
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mPortLP:Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .line 70
    return-void
.end method

.method public setPortLp(Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;)V
    .locals 1
    .param p1, "port"    # Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .prologue
    .line 73
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mPortLP:Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .line 74
    return-void
.end method

.method public setTextProperty(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V
    .locals 4
    .param p1, "property"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    .prologue
    const/4 v3, -0x1

    .line 81
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mCurrentProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    .line 82
    const/4 v0, -0x1

    .line 83
    .local v0, "index":I
    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    if-eq v2, v3, :cond_3

    .line 84
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    .line 88
    :cond_0
    :goto_0
    if-eq v0, v3, :cond_1

    .line 89
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    if-eqz v2, :cond_1

    .line 91
    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    .end local v1    # "v":Landroid/view/View;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mCurrentProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->applyProperty(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 95
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setFilterData()V

    .line 97
    :cond_2
    return-void

    .line 85
    :cond_3
    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    if-eq v2, v3, :cond_0

    .line 86
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    goto :goto_0
.end method

.method public tryExitSelectMode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 623
    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    if-eq v2, v5, :cond_3

    .line 624
    iput v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I

    .line 625
    invoke-direct {p0, v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setActionBarVisibility(I)V

    .line 626
    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 627
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 628
    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    invoke-virtual {v2, v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setViewFocus(Z)V

    move-object v2, v1

    .line 629
    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    invoke-virtual {v2, v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->focusOnText(Z)V

    move-object v2, v1

    .line 630
    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v1

    .line 632
    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mTextWatcher:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;

    invoke-virtual {v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->removeTextChangedListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;)V

    .line 634
    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->removeView(Landroid/view/View;)V

    .line 635
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 636
    iput-boolean v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mIsEmpty:Z

    .line 637
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mTextChangListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;

    if-eqz v2, :cond_1

    .line 638
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mTextChangListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;

    invoke-interface {v2, v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;->onTextInPhotoBounds(Z)V

    .line 643
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    iput v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    .line 644
    iput v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    .line 645
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mCurrentProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    invoke-direct {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->notifyPropertyChanged(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    .line 659
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .line 646
    :cond_3
    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I

    if-ne v2, v6, :cond_2

    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    if-eq v2, v5, :cond_2

    .line 647
    iput v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mState:I

    .line 648
    invoke-direct {p0, v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->setActionBarVisibility(I)V

    .line 649
    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 650
    .restart local v1    # "v":Landroid/view/View;
    instance-of v2, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    if-eqz v2, :cond_4

    move-object v2, v1

    .line 651
    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    invoke-virtual {v2, v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setViewFocus(Z)V

    move-object v2, v1

    .line 652
    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    invoke-virtual {v2, v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setTextFocus(Z)V

    .line 653
    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;

    .end local v1    # "v":Landroid/view/View;
    invoke-virtual {v1, v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->focusOnText(Z)V

    .line 655
    :cond_4
    iput v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mEditChild:I

    .line 656
    iput v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mSelectedChild:I

    .line 657
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->mCurrentProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    invoke-direct {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer;->notifyPropertyChanged(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    goto :goto_0
.end method
