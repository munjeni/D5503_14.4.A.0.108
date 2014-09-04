.class public Lcom/sonymobile/movablepanes/paneview/PaneView;
.super Landroid/widget/AdapterView;
.source "PaneView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/movablepanes/paneview/PaneView$PaneDataSetObserver;,
        Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;,
        Lcom/sonymobile/movablepanes/paneview/PaneView$Item;,
        Lcom/sonymobile/movablepanes/paneview/PaneView$ItemDeleteListener;,
        Lcom/sonymobile/movablepanes/paneview/PaneView$ItemViewListener;,
        Lcom/sonymobile/movablepanes/paneview/PaneView$InteractionListener;,
        Lcom/sonymobile/movablepanes/paneview/PaneView$DrawFilter;,
        Lcom/sonymobile/movablepanes/paneview/PaneView$PaneViewTouchListener;,
        Lcom/sonymobile/movablepanes/paneview/PaneView$ScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Lcom/sonymobile/movablepanes/paneview/PaneAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG_FPS:Z = false

.field private static final FRAME_DELAY:J = 0xaL

.field private static final POSITION_TOLERANCE:F = 0.001f

.field private static final RUBBER_BAND_FACTOR:F = 0.4f

.field private static final VELOCITY_TOLERANCE:F = 0.001f


# instance fields
.field private mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

.field private mBackplate:Landroid/graphics/drawable/Drawable;

.field private mBackplateBitmap:Landroid/graphics/Bitmap;

.field private mBackplateOffsetX:I

.field private mBackplateWidth:I

.field private mBreakTraversal:Z

.field private mDataSetObserver:Lcom/sonymobile/movablepanes/paneview/PaneView$PaneDataSetObserver;

.field private final mDebugTextPaint:Landroid/graphics/Paint;

.field private mDeleteItemListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ItemDeleteListener;

.field private mDeletedItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/movablepanes/paneview/PaneView$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mDoMirror:Z

.field private mDynamicsRunnable:Ljava/lang/Runnable;

.field private mFindFocusableWidget:Z

.field private mFocusDesired:Z

.field private mFocusFinder:Lcom/sonymobile/movablepanes/paneview/FocusFinder;

.field private mFocusPaddingBottom:I

.field private mFocusPaddingLeft:I

.field private mFocusPaddingRight:I

.field private mFocusPaddingTop:I

.field private mFocusedItemDrawable:Landroid/graphics/drawable/Drawable;

.field private mGestureDetector:Lcom/sonymobile/movablepanes/paneview/GestureDetector;

.field private mInteractionListener:Lcom/sonymobile/movablepanes/paneview/PaneView$InteractionListener;

.field private mInvalidRect:Landroid/graphics/Rect;

.field private mIsInteracting:Z

.field private mItemBackgroundDrawn:Z

.field private mItemFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mItemKeyListener:Landroid/view/View$OnKeyListener;

.field private mItemViewListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ItemViewListener;

.field private mItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItems1:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItems2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsSorted:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepMaxScroll:Z

.field private mMarginF:F

.field private mMaxScroll:F

.field private mNumberOfPanes:I

.field private mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

.field private mPaneViewTouchListener:Lcom/sonymobile/movablepanes/paneview/PaneView$PaneViewTouchListener;

.field private mPreferExternalFocus:Z

.field private mPreventExternalFocus:Z

.field private mRejectPaddingTouch:Z

.field private mRendererFactory:Lcom/sonymobile/movablepanes/paneview/RendererFactory;

.field private mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

.field private mScrollListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ScrollListener;

.field private mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

.field private mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

.field private mSrcBlit:Z

.field private mSrcBlitPaint:Landroid/graphics/Paint;

.field private mStandardRenderersEnabled:Z

.field private mTouchIsLocked:Z

.field private mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

.field private mVelocityThreshold:I

.field private mViewCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWidthWithMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 464
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 326
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 332
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .line 335
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    .line 338
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    .line 347
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    .line 356
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDeletedItems:Ljava/util/LinkedList;

    .line 389
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDebugTextPaint:Landroid/graphics/Paint;

    .line 391
    iput-boolean v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mStandardRenderersEnabled:Z

    .line 400
    new-instance v1, Lcom/sonymobile/movablepanes/paneview/FocusFinder;

    invoke-direct {v1}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusFinder:Lcom/sonymobile/movablepanes/paneview/FocusFinder;

    .line 440
    iput-boolean v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFindFocusableWidget:Z

    .line 455
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    .line 466
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setDescendantFocusability(I)V

    .line 468
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 470
    .local v0, "touchSlop":I
    new-instance v1, Lcom/sonymobile/movablepanes/paneview/GestureDetector;

    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->createGestureListener()Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;

    move-result-object v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;-><init>(Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;IJ)V

    iput-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mGestureDetector:Lcom/sonymobile/movablepanes/paneview/GestureDetector;

    .line 473
    new-instance v1, Lcom/sonymobile/movablepanes/paneview/PaneView$PaneDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView$PaneDataSetObserver;-><init>(Lcom/sonymobile/movablepanes/paneview/PaneView;Lcom/sonymobile/movablepanes/paneview/PaneView$1;)V

    iput-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDataSetObserver:Lcom/sonymobile/movablepanes/paneview/PaneView$PaneDataSetObserver;

    .line 475
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->createDynamicsRunnable()V

    .line 477
    new-instance v1, Lcom/sonymobile/movablepanes/paneview/PaneView$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/movablepanes/paneview/PaneView$1;-><init>(Lcom/sonymobile/movablepanes/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    .line 489
    new-instance v1, Lcom/sonymobile/movablepanes/paneview/PaneView$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/movablepanes/paneview/PaneView$2;-><init>(Lcom/sonymobile/movablepanes/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    .line 501
    new-instance v1, Lcom/sonymobile/movablepanes/paneview/PaneView$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/movablepanes/paneview/PaneView$3;-><init>(Lcom/sonymobile/movablepanes/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItemKeyListener:Landroid/view/View$OnKeyListener;

    .line 524
    new-instance v1, Lcom/sonymobile/movablepanes/paneview/PaneView$4;

    invoke-direct {v1, p0}, Lcom/sonymobile/movablepanes/paneview/PaneView$4;-><init>(Lcom/sonymobile/movablepanes/paneview/PaneView;)V

    iput-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItemFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 537
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/movablepanes/paneview/PaneView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->startDynamicsRunnable(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$PaneViewTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneViewTouchListener:Lcom/sonymobile/movablepanes/paneview/PaneView$PaneViewTouchListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/movablepanes/paneview/PaneView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;
    .param p1, "x1"    # F

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->pixelsToPosition(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonymobile/movablepanes/paneview/PaneView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;

    .prologue
    .line 63
    iget v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sonymobile/movablepanes/paneview/PaneView;FFF)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->updateSnapPosition(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonymobile/movablepanes/paneview/PaneView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;

    .prologue
    .line 63
    iget v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F

    return v0
.end method

.method static synthetic access$1800(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$ItemDeleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDeleteItemListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ItemDeleteListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonymobile/movablepanes/paneview/PaneView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->interactionStart()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/movablepanes/paneview/PaneView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->onDataChanged(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonymobile/movablepanes/paneview/PaneView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->updatePanePosition()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonymobile/movablepanes/paneview/PaneView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->interactionEnd()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonymobile/movablepanes/paneview/PaneView;Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;
    .param p1, "x1"    # Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonymobile/movablepanes/paneview/PaneView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/movablepanes/paneview/PaneView;II)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getContainingItem(II)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/movablepanes/paneview/PaneView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private addItemView(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;Landroid/view/View;Z)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "addAsChild"    # Z

    .prologue
    const/high16 v2, 0x40000000

    .line 2406
    if-nez p2, :cond_0

    .line 2433
    :goto_0
    return-void

    .line 2411
    :cond_0
    iget-object v0, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2413
    invoke-direct {p0, p1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeItemView(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)V

    .line 2417
    :cond_1
    iput-object p2, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    .line 2418
    iget-object v0, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2421
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItemViewListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ItemViewListener;

    if-eqz v0, :cond_2

    .line 2422
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItemViewListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ItemViewListener;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {p1}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/sonymobile/movablepanes/paneview/PaneView$ItemViewListener;->onViewAdded(ILandroid/view/View;)V

    .line 2425
    :cond_2
    if-eqz p3, :cond_3

    .line 2427
    invoke-direct {p0, p2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->addViewAndLayoutParams(Landroid/view/View;)V

    .line 2431
    :cond_3
    iget-object v0, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v0, v0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    or-int/2addr v0, v2

    iget-object v1, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v1, v1, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    or-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method private addRootView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2664
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2665
    .local v1, "parent":Landroid/view/ViewParent;
    move-object v0, p1

    .line 2667
    .local v0, "descendant":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_0

    if-eq v1, p0, :cond_0

    move-object v0, v1

    .line 2668
    check-cast v0, Landroid/view/View;

    .line 2669
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 2672
    :cond_0
    if-nez v1, :cond_1

    .line 2673
    invoke-direct {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->addViewAndLayoutParams(Landroid/view/View;)V

    .line 2675
    :cond_1
    return-void
.end method

.method private addViewAndLayoutParams(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x2

    .line 2723
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2724
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 2725
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2728
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2729
    return-void
.end method

.method private addViewToCache(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .prologue
    .line 2460
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 2461
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 2462
    .local v0, "viewTypeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 2463
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "viewTypeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2464
    .restart local v0    # "viewTypeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2466
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2468
    .end local v0    # "viewTypeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method private clearItems(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2063
    .local p1, "items":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 2064
    .local v1, "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->recycle()V

    .line 2065
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    goto :goto_0

    .line 2067
    .end local v1    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 2068
    return-void
.end method

.method private createDynamicsRunnable()V
    .locals 1

    .prologue
    .line 1629
    new-instance v0, Lcom/sonymobile/movablepanes/paneview/PaneView$6;

    invoke-direct {v0, p0}, Lcom/sonymobile/movablepanes/paneview/PaneView$6;-><init>(Lcom/sonymobile/movablepanes/paneview/PaneView;)V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    .line 1649
    return-void
.end method

.method private createGestureListener()Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;
    .locals 1

    .prologue
    .line 1460
    new-instance v0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;

    invoke-direct {v0, p0}, Lcom/sonymobile/movablepanes/paneview/PaneView$5;-><init>(Lcom/sonymobile/movablepanes/paneview/PaneView;)V

    return-object v0
.end method

.method private createSrcBlitPaint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2259
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    .line 2260
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2261
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2262
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2263
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2264
    return-void
.end method

.method private detectUserPaneSwitch(Landroid/view/View;Landroid/view/View;I)Z
    .locals 6
    .param p1, "currentFocus"    # Landroid/view/View;
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "direction"    # I

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 2740
    const/4 v1, 0x0

    .line 2742
    .local v1, "scroll":Z
    if-eq p3, v4, :cond_0

    if-ne p3, v5, :cond_3

    .line 2743
    :cond_0
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2744
    .local v0, "focusRect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 2745
    .local v3, "sourceRect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 2747
    .local v2, "scrollRect":Landroid/graphics/Rect;
    invoke-direct {p0, p2, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getFocusRectInRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2748
    invoke-direct {p0, p1, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getFocusRectInRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2750
    invoke-virtual {p0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2751
    invoke-direct {p0, p0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->offsetRectToRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2755
    if-ne p3, v4, :cond_4

    .line 2756
    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 2765
    :cond_1
    :goto_0
    invoke-static {p3, v3, v2, v0}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2766
    const/4 v1, 0x1

    .line 2769
    :cond_2
    invoke-static {v0}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2770
    invoke-static {v3}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2771
    invoke-static {v2}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2774
    .end local v0    # "focusRect":Landroid/graphics/Rect;
    .end local v2    # "scrollRect":Landroid/graphics/Rect;
    .end local v3    # "sourceRect":Landroid/graphics/Rect;
    :cond_3
    return v1

    .line 2757
    .restart local v0    # "focusRect":Landroid/graphics/Rect;
    .restart local v2    # "scrollRect":Landroid/graphics/Rect;
    .restart local v3    # "sourceRect":Landroid/graphics/Rect;
    :cond_4
    if-ne p3, v5, :cond_1

    .line 2758
    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/graphics/Rect;->right:I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private drawBackplate(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1416
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 1417
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 1418
    iget v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateWidth:I

    if-eqz v4, :cond_3

    iget v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateWidth:I

    .line 1420
    .local v0, "backplateWidth":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    .line 1422
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1423
    .local v3, "tmpCanvas":Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v7, v7, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1424
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1427
    .end local v0    # "backplateWidth":I
    .end local v3    # "tmpCanvas":Landroid/graphics/Canvas;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v4}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v4

    float-to-int v2, v4

    .line 1429
    .local v2, "pane1":I
    if-ltz v2, :cond_1

    iget v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I

    if-ge v2, v4, :cond_1

    .line 1430
    iget v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateOffsetX:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v5

    add-int v1, v4, v5

    .line 1431
    .local v1, "left":I
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    int-to-float v5, v1

    iget-object v6, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1432
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v1, v7, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 1436
    .end local v1    # "left":I
    :cond_1
    iget v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_2

    .line 1437
    iget v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateOffsetX:I

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v5

    add-int v1, v4, v5

    .line 1438
    .restart local v1    # "left":I
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    int-to-float v5, v1

    iget-object v6, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1439
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v1, v7, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 1443
    .end local v1    # "left":I
    .end local v2    # "pane1":I
    :cond_2
    return-void

    .line 1418
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private drawDeletedItems(Landroid/graphics/Canvas;F)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "position"    # F

    .prologue
    const/4 v5, 0x0

    .line 2139
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDeletedItems:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2141
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/movablepanes/paneview/PaneView$Item;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;

    .line 2144
    .local v0, "deletedItem":Lcom/sonymobile/movablepanes/paneview/PaneView$Item;
    invoke-direct {p0, p1, v0, p2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->drawItemUsingRenderer(Landroid/graphics/Canvas;Lcom/sonymobile/movablepanes/paneview/PaneView$Item;F)Z

    move-result v2

    .line 2146
    .local v2, "newFrame":Z
    if-nez v2, :cond_0

    .line 2148
    iget-object v3, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeViewInLayout(Landroid/view/View;)V

    .line 2152
    iput-object v5, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    .line 2155
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mRendererFactory:Lcom/sonymobile/movablepanes/paneview/RendererFactory;

    iget-object v4, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    invoke-interface {v3, v4}, Lcom/sonymobile/movablepanes/paneview/RendererFactory;->recycle(Lcom/sonymobile/movablepanes/animation/Renderer;)V

    .line 2156
    iput-object v5, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    .line 2159
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2166
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->invalidate()V

    goto :goto_0

    .line 2168
    .end local v0    # "deletedItem":Lcom/sonymobile/movablepanes/paneview/PaneView$Item;
    .end local v2    # "newFrame":Z
    :cond_1
    return-void
.end method

.method private static drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 2125
    if-eqz p1, :cond_0

    .line 2126
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2127
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2129
    :cond_0
    return-void
.end method

.method private drawFocusRect(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1446
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1447
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1448
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1449
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v1, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 1450
    invoke-static {v0}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1452
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private drawItemUsingRenderer(Landroid/graphics/Canvas;Lcom/sonymobile/movablepanes/paneview/PaneView$Item;F)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "item"    # Lcom/sonymobile/movablepanes/paneview/PaneView$Item;
    .param p3, "position"    # F

    .prologue
    const/4 v2, 0x0

    .line 2276
    iget-object v0, p2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    if-nez v0, :cond_0

    .line 2278
    const/4 v6, 0x0

    .line 2298
    :goto_0
    return v6

    .line 2283
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2284
    invoke-direct {p0, v2, p3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v1}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->positionToPixels(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2287
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 2288
    .local v3, "targetRect":Landroid/graphics/Rect;
    iget-object v0, p2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v0, v0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2289
    iget-object v0, p2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget v0, v0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    int-to-float v0, v0

    invoke-direct {p0, v2, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingTop()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2292
    iget-object v0, p2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    iget-object v1, p2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/movablepanes/animation/Renderer;->draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z

    move-result v6

    .line 2295
    .local v6, "newFrame":Z
    invoke-static {v3}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2296
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private drawItems(Landroid/graphics/Canvas;F)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "position"    # F

    .prologue
    const/4 v7, 0x0

    .line 2177
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 2178
    .local v4, "viewRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2180
    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 2181
    .local v2, "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v5, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 2186
    iget-object v5, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    if-eqz v5, :cond_3

    .line 2187
    invoke-direct {p0, p1, v2, p2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->drawItemUsingRenderer(Landroid/graphics/Canvas;Lcom/sonymobile/movablepanes/paneview/PaneView$Item;F)Z

    move-result v3

    .line 2188
    .local v3, "newFrame":Z
    if-nez v3, :cond_2

    iget-boolean v5, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->rendererIsStandard:Z

    if-nez v5, :cond_2

    .line 2190
    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mRendererFactory:Lcom/sonymobile/movablepanes/paneview/RendererFactory;

    iget-object v6, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    invoke-interface {v5, v6}, Lcom/sonymobile/movablepanes/paneview/RendererFactory;->recycle(Lcom/sonymobile/movablepanes/animation/Renderer;)V

    .line 2191
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    .line 2192
    iget-object v5, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    invoke-direct {p0, v5, p2, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->isLocationVisible(Lcom/sonymobile/movablepanes/paneview/PaneLocation;FLandroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2195
    invoke-direct {p0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeItemView(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)V

    .line 2198
    :cond_1
    iget-boolean v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mStandardRenderersEnabled:Z

    if-eqz v5, :cond_2

    .line 2201
    invoke-direct {p0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setStandardRenderer(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)V

    .line 2207
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->invalidate()V

    goto :goto_0

    .line 2209
    .end local v3    # "newFrame":Z
    :cond_3
    const/4 v0, 0x0

    .line 2211
    .local v0, "cache":Landroid/graphics/Bitmap;
    iget-boolean v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSrcBlit:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItemBackgroundDrawn:Z

    if-nez v5, :cond_4

    .line 2212
    iget-object v5, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2215
    :cond_4
    if-eqz v0, :cond_5

    .line 2216
    iget-object v5, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-direct {p0, p1, v5, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->srcBlitChild(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 2220
    :goto_1
    iget-object v5, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/sonymobile/movablepanes/paneview/PaneView;->unionInvalidRectWithView(Landroid/view/View;)V

    goto :goto_0

    .line 2218
    :cond_5
    iget-object v5, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/sonymobile/movablepanes/paneview/PaneView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 2224
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    .end local v2    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :cond_6
    invoke-static {v4}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2225
    return-void
.end method

.method private drawUsingTransformer(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 2077
    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    invoke-interface {v5}, Lcom/sonymobile/movablepanes/paneview/Transformer;->update()V

    .line 2079
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 2080
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 2081
    .local v4, "viewRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2084
    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 2085
    .local v2, "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 2086
    .local v0, "adapterItem":Ljava/lang/Object;
    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    invoke-interface {v5, v0, v3}, Lcom/sonymobile/movablepanes/paneview/Transformer;->getDrawRect(Ljava/lang/Object;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2087
    invoke-static {v4, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2088
    iget-object v5, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-nez v5, :cond_1

    .line 2089
    iget-object v5, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget v5, v5, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    int-to-float v5, v5

    invoke-direct {p0, v2, v5}, Lcom/sonymobile/movablepanes/paneview/PaneView;->layoutItem(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;F)V

    .line 2092
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    invoke-interface {v5, v0}, Lcom/sonymobile/movablepanes/paneview/Transformer;->isSelected(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->isInteractive(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2095
    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v5, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 2098
    :cond_2
    iget-object v5, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 2099
    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    iget-object v6, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-interface {v5, v0, v6}, Lcom/sonymobile/movablepanes/paneview/Transformer;->addItemToDraw(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_0

    .line 2105
    .end local v0    # "adapterItem":Ljava/lang/Object;
    .end local v2    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :cond_3
    invoke-static {v4}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2106
    invoke-static {v3}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2110
    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    invoke-interface {v5, p1}, Lcom/sonymobile/movablepanes/paneview/Transformer;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2113
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->invalidate()V

    .line 2115
    :cond_4
    return-void
.end method

.method private ensureItemView(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;Z)V
    .locals 11
    .param p1, "item"    # Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "addAsChild"    # Z

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x40000000

    const/4 v8, 0x1

    .line 2328
    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {p1}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v0

    .line 2329
    .local v0, "adapterPosition":I
    const/4 v1, 0x0

    .line 2331
    .local v1, "gotView":Z
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    invoke-interface {v4}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_0

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->id:J
    invoke-static {p1}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$600(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    invoke-interface {v6, v0}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 2333
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ID has changed!A posible cause of this is that the client has changed the data without notifiying us (via the observer on the adapter).If the IDs are not stable, hasStableIds() should return false."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2339
    :cond_0
    iget-object v4, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-boolean v4, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->viewValid:Z

    if-nez v4, :cond_6

    .line 2342
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    iget-object v5, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-interface {v4, v0, v5, p0}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2343
    .local v2, "view":Landroid/view/View;
    const/4 v1, 0x1

    .line 2345
    iget-object v4, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eq v2, v4, :cond_1

    .line 2349
    const-string v4, "PaneView"

    const-string v5, "convertView does not seem to be handled efficiently by the adaptor"

    invoke-static {v4, v5}, Lcom/sonymobile/movablepanes/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    invoke-direct {p0, p1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeItemView(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)V

    .line 2354
    invoke-direct {p0, p1, v2, p3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->addItemView(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;Landroid/view/View;Z)V

    .line 2357
    :cond_1
    iput-boolean v8, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->viewValid:Z

    .line 2367
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    :goto_0
    iget-object v4, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mStandardRenderersEnabled:Z

    if-eqz v4, :cond_3

    .line 2368
    invoke-direct {p0, p1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setStandardRenderer(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)V

    .line 2371
    :cond_3
    iget-object v4, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 2372
    iget-object v2, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    .line 2374
    .restart local v2    # "view":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2375
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {p1}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->isInteractive(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2376
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {p1}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2377
    invoke-virtual {v2, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 2379
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItemKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2380
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItemFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2390
    :cond_4
    :goto_1
    iget-object v4, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    or-int/2addr v4, v9

    iget-object v5, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    or-int/2addr v5, v9

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 2392
    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 2394
    .end local v2    # "view":Landroid/view/View;
    :cond_5
    return-void

    .line 2359
    :cond_6
    iget-object v4, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-nez v4, :cond_2

    .line 2361
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    invoke-interface {v4, v0}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->getItemViewType(I)I

    move-result v3

    .line 2362
    .local v3, "viewType":I
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    invoke-direct {p0, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeViewFromCache(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v0, v5, p0}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2363
    .restart local v2    # "view":Landroid/view/View;
    const/4 v1, 0x1

    .line 2364
    invoke-direct {p0, p1, v2, p3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->addItemView(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;Landroid/view/View;Z)V

    goto :goto_0

    .line 2382
    .end local v3    # "viewType":I
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 2383
    invoke-virtual {v2, v10}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2384
    invoke-virtual {v2, v10}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_1
.end method

.method private findItem(Landroid/view/View;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2540
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 2541
    .local v1, "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 2546
    .end local v1    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private focusSearchOffScreen(Landroid/view/View;I)Landroid/view/View;
    .locals 10
    .param p1, "currentFocus"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x20000

    const/4 v7, 0x0

    const/16 v6, 0x42

    const/16 v5, 0x11

    .line 2841
    const/4 v1, 0x0

    .line 2842
    .local v1, "newFocus":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getCurrentPane()I

    move-result v2

    .line 2843
    .local v2, "pane":I
    const/4 v3, 0x0

    .line 2845
    .local v3, "sourceRect":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 2846
    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "sourceRect":Landroid/graphics/Rect;
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2847
    .restart local v3    # "sourceRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2850
    invoke-virtual {p0, p1, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2853
    :cond_0
    if-ne p2, v5, :cond_5

    invoke-direct {p0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->panesToTheLeft(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2854
    invoke-direct {p0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getLeftPane(I)I

    move-result v4

    invoke-direct {p0, p2, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getFocusableViewsOnPane(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 2855
    .local v0, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v3, :cond_4

    .line 2861
    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 2862
    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 2863
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusFinder:Lcom/sonymobile/movablepanes/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v3, v6}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->findNextFocusFromRect(Ljava/util/ArrayList;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    .line 2870
    :goto_0
    if-nez v1, :cond_1

    iget-boolean v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusDesired:Z

    if-eqz v4, :cond_1

    .line 2876
    invoke-virtual {p0, v8}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setDescendantFocusability(I)V

    .line 2879
    move-object v1, p0

    .line 2882
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->moveToLeftPane()Z

    .line 2921
    .end local v0    # "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    if-eq v1, p0, :cond_3

    .line 2924
    invoke-direct {p0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->addRootView(Landroid/view/View;)V

    .line 2927
    :cond_3
    return-object v1

    .line 2866
    .restart local v0    # "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusFinder:Lcom/sonymobile/movablepanes/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v9, v6}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->findNextFocus(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 2883
    .end local v0    # "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    if-ne p2, v6, :cond_8

    invoke-direct {p0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->panesToTheRight(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2884
    invoke-direct {p0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getRightPane(I)I

    move-result v4

    invoke-direct {p0, p2, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getFocusableViewsOnPane(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 2885
    .restart local v0    # "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v3, :cond_7

    .line 2891
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2892
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2893
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusFinder:Lcom/sonymobile/movablepanes/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v3, v5}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->findNextFocusFromRect(Ljava/util/ArrayList;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    .line 2900
    :goto_2
    if-nez v1, :cond_6

    iget-boolean v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusDesired:Z

    if-eqz v4, :cond_6

    .line 2906
    invoke-virtual {p0, v8}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setDescendantFocusability(I)V

    .line 2909
    move-object v1, p0

    .line 2912
    :cond_6
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->moveToRightPane()Z

    goto :goto_1

    .line 2896
    :cond_7
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusFinder:Lcom/sonymobile/movablepanes/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v9, v5}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->findNextFocus(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 2913
    .end local v0    # "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_8
    const/16 v4, 0x82

    if-eq p2, v4, :cond_9

    const/16 v4, 0x21

    if-ne p2, v4, :cond_2

    .line 2914
    :cond_9
    invoke-direct {p0, p2, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getFocusableViewsOnPane(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 2915
    .restart local v0    # "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v3, :cond_2

    .line 2916
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusFinder:Lcom/sonymobile/movablepanes/paneview/FocusFinder;

    invoke-virtual {v4, v0, p0, v3, p2}, Lcom/sonymobile/movablepanes/paneview/FocusFinder;->findNextFocusFromRect(Ljava/util/ArrayList;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method private getAdapterItems(Ljava/util/HashMap;Ljava/util/HashMap;Z)V
    .locals 16
    .param p3, "enableAnimations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1845
    .local p1, "newItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;>;"
    .local p2, "oldItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    invoke-interface {v1}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->hasStableIds()Z

    move-result v14

    .line 1846
    .local v14, "stableIDs":Z
    if-nez v14, :cond_0

    .line 1849
    const/16 p3, 0x0

    .line 1854
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->clear()V

    .line 1857
    :cond_0
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1858
    .local v2, "itemDrawRect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->obtain()Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    move-result-object v12

    .line 1859
    .local v12, "newLocation":Lcom/sonymobile/movablepanes/paneview/PaneLocation;
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v15

    .line 1860
    .local v15, "viewRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getHeight()I

    move-result v5

    invoke-virtual {v15, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v1}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v13

    .line 1863
    .local v13, "position":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    invoke-interface {v1}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->getCount()I

    move-result v1

    if-ge v7, v1, :cond_7

    .line 1865
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    invoke-interface {v1, v7, v12}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->getLocation(ILcom/sonymobile/movablepanes/paneview/PaneLocation;)V

    .line 1868
    const/4 v10, 0x0

    .line 1870
    .local v10, "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    if-eqz v14, :cond_5

    .line 1873
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    invoke-interface {v1, v7}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->getItemId(I)J

    move-result-wide v8

    .line 1874
    .local v8, "id":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    check-cast v10, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 1880
    .restart local v10    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :goto_1
    if-eqz v10, :cond_6

    .line 1889
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mRendererFactory:Lcom/sonymobile/movablepanes/paneview/RendererFactory;

    if-eqz v1, :cond_2

    iget-object v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    invoke-virtual {v12, v1}, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    iget-object v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13, v15}, Lcom/sonymobile/movablepanes/paneview/PaneView;->isLocationVisible(Lcom/sonymobile/movablepanes/paneview/PaneLocation;FLandroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v15}, Lcom/sonymobile/movablepanes/paneview/PaneView;->isLocationVisible(Lcom/sonymobile/movablepanes/paneview/PaneLocation;FLandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1895
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mRendererFactory:Lcom/sonymobile/movablepanes/paneview/RendererFactory;

    invoke-interface {v1, v7}, Lcom/sonymobile/movablepanes/paneview/RendererFactory;->getMoveRenderer(I)Lcom/sonymobile/movablepanes/animation/Renderer;

    move-result-object v1

    iput-object v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    .line 1896
    iget-object v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    if-eqz v1, :cond_2

    .line 1897
    iget-object v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v1, v1, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1898
    const/4 v1, 0x0

    iget-object v3, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget v3, v3, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1900
    iget-object v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Lcom/sonymobile/movablepanes/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 1905
    :cond_2
    iget-object v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    invoke-virtual {v1, v12}, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->set(Lcom/sonymobile/movablepanes/paneview/PaneLocation;)V

    .line 1906
    # setter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v10, v7}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$502(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;I)I

    .line 1908
    iget-object v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1911
    const/4 v1, 0x0

    iput-boolean v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->viewValid:Z

    .line 1936
    :cond_3
    :goto_2
    iget-object v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v1, v1, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_4

    .line 1937
    iget-object v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v1, v1, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->pixelsToPosition(F)F

    move-result v11

    .line 1938
    .local v11, "maxScroll":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F

    cmpl-float v1, v11, v1

    if-lez v1, :cond_4

    .line 1939
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F

    .line 1944
    .end local v11    # "maxScroll":F
    :cond_4
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1863
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1877
    .end local v8    # "id":J
    :cond_5
    int-to-long v8, v7

    .restart local v8    # "id":J
    goto/16 :goto_1

    .line 1919
    :cond_6
    new-instance v10, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .end local v10    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;-><init>(Lcom/sonymobile/movablepanes/paneview/PaneView$1;)V

    .line 1920
    .restart local v10    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {}, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->obtain()Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    move-result-object v1

    iput-object v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    .line 1921
    iget-object v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    invoke-virtual {v1, v12}, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->set(Lcom/sonymobile/movablepanes/paneview/PaneLocation;)V

    .line 1922
    # setter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v10, v7}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$502(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;I)I

    .line 1923
    # setter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->id:J
    invoke-static {v10, v8, v9}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$602(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;J)J

    .line 1925
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mRendererFactory:Lcom/sonymobile/movablepanes/paneview/RendererFactory;

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    .line 1926
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mRendererFactory:Lcom/sonymobile/movablepanes/paneview/RendererFactory;

    invoke-interface {v1, v7}, Lcom/sonymobile/movablepanes/paneview/RendererFactory;->getAddRenderer(I)Lcom/sonymobile/movablepanes/animation/Renderer;

    move-result-object v1

    iput-object v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    .line 1927
    iget-object v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    if-eqz v1, :cond_3

    .line 1928
    iget-object v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v1, v1, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1929
    const/4 v1, 0x0

    iget-object v3, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget v3, v3, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1931
    iget-object v1, v10, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Lcom/sonymobile/movablepanes/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    goto/16 :goto_2

    .line 1947
    .end local v8    # "id":J
    .end local v10    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->updateMaxScroll(Ljava/util/Collection;)V

    .line 1949
    invoke-static {v15}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1950
    invoke-virtual {v12}, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->recycle()V

    .line 1951
    invoke-static {v2}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1952
    return-void
.end method

.method private getContainingItem(II)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1603
    const/4 v2, 0x0

    .line 1604
    .local v2, "result":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    const/4 v3, -0x1

    .line 1607
    .local v3, "zIndex":I
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 1608
    .local v1, "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v4, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->containRegion:Landroid/graphics/Region;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->containRegion:Landroid/graphics/Region;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget v4, v4, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->zOrder:I

    if-lt v4, v3, :cond_1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1612
    :cond_1
    iget-object v4, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget v3, v4, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->zOrder:I

    .line 1613
    move-object v2, v1

    goto :goto_0

    .line 1621
    .end local v1    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :cond_2
    return-object v2
.end method

.method private getFocusRectInRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 2653
    invoke-virtual {p1, p2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2654
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->offsetRectToRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2655
    return-void
.end method

.method private getFocusableViewsOnPane(II)Ljava/util/ArrayList;
    .locals 9
    .param p1, "direction"    # I
    .param p2, "pane"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2686
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2687
    .local v4, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v5}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/sonymobile/movablepanes/paneview/PaneView;->positionToPixels(F)I

    move-result v3

    .line 2689
    .local v3, "scroll":I
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 2691
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 2692
    .local v1, "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2693
    iget-object v5, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v5, v5, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2694
    int-to-float v5, p2

    iget-object v6, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget v6, v6, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    int-to-float v6, v6

    invoke-direct {p0, v5, v6}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v5

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    neg-int v6, v3

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2696
    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-lez v5, :cond_0

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 2697
    iget-object v5, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 2698
    iget-object v5, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget-object v7, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2699
    iget-object v5, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget-object v7, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2704
    :goto_1
    iget-object v5, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 2705
    iget-object v5, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {v5, v4, p1, v8}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0

    .line 2701
    :cond_1
    invoke-direct {p0, v1, v2, v8}, Lcom/sonymobile/movablepanes/paneview/PaneView;->ensureItemView(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;Z)V

    goto :goto_1

    .line 2711
    .end local v1    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :cond_2
    invoke-static {v2}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2713
    return-object v4
.end method

.method private getLeftPane(I)I
    .locals 1
    .param p1, "pane"    # I

    .prologue
    .line 2784
    iget-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_0

    .line 2785
    add-int/lit8 v0, p1, 0x1

    .line 2787
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method

.method private getPaneXOffset(FF)I
    .locals 1
    .param p1, "position"    # F
    .param p2, "pane"    # F

    .prologue
    .line 2495
    sub-float v0, p2, p1

    invoke-direct {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->positionToPixels(F)I

    move-result v0

    return v0
.end method

.method private getRightPane(I)I
    .locals 1
    .param p1, "pane"    # I

    .prologue
    .line 2798
    iget-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_0

    .line 2799
    add-int/lit8 v0, p1, -0x1

    .line 2801
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private handleDeletedItems(Ljava/util/HashMap;Z)V
    .locals 5
    .param p2, "enableAnimations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "deletedItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;>;"
    const/4 v4, 0x0

    .line 1980
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1983
    .local v2, "itemDrawRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 1985
    .local v0, "deletedItem":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    if-ne v0, v3, :cond_1

    .line 1986
    iput-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 1990
    :cond_1
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2014
    iget-object v3, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeViewInLayout(Landroid/view/View;)V

    .line 2018
    iput-object v4, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    goto :goto_0

    .line 2024
    .end local v0    # "deletedItem":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->clearItems(Ljava/util/HashMap;)V

    .line 2026
    invoke-static {v2}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2027
    return-void
.end method

.method private interactionEnd()V
    .locals 1

    .prologue
    .line 1670
    iget-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mIsInteracting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mInteractionListener:Lcom/sonymobile/movablepanes/paneview/PaneView$InteractionListener;

    if-eqz v0, :cond_0

    .line 1671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mIsInteracting:Z

    .line 1672
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mInteractionListener:Lcom/sonymobile/movablepanes/paneview/PaneView$InteractionListener;

    invoke-interface {v0}, Lcom/sonymobile/movablepanes/paneview/PaneView$InteractionListener;->onInteractionEnd()V

    .line 1674
    :cond_0
    return-void
.end method

.method private interactionStart()V
    .locals 1

    .prologue
    .line 1663
    iget-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mIsInteracting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mInteractionListener:Lcom/sonymobile/movablepanes/paneview/PaneView$InteractionListener;

    if-eqz v0, :cond_0

    .line 1664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mIsInteracting:Z

    .line 1665
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mInteractionListener:Lcom/sonymobile/movablepanes/paneview/PaneView$InteractionListener;

    invoke-interface {v0}, Lcom/sonymobile/movablepanes/paneview/PaneView$InteractionListener;->onInteractionStart()V

    .line 1667
    :cond_0
    return-void
.end method

.method private isLocationVisible(Lcom/sonymobile/movablepanes/paneview/PaneLocation;FLandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "location"    # Lcom/sonymobile/movablepanes/paneview/PaneLocation;
    .param p2, "position"    # F
    .param p3, "viewRect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v3, 0x3f800000

    .line 2039
    iget v2, p1, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, p1, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 2042
    :cond_0
    const/4 v1, 0x0

    .line 2053
    :goto_0
    return v1

    .line 2044
    :cond_1
    const/4 v1, 0x0

    .line 2045
    .local v1, "visible":Z
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2046
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v2, p1, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2047
    iget v2, p1, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    int-to-float v2, v2

    invoke-direct {p0, p2, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->positionToPixels(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2049
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2050
    const/4 v1, 0x1

    .line 2052
    :cond_2
    invoke-static {v0}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private layoutItem(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;F)V
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    .param p2, "placement"    # F

    .prologue
    .line 2309
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2310
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v1, v1, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2311
    iget-object v1, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget v1, v1, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    int-to-float v1, v1

    invoke-direct {p0, p2, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->positionToPixels(F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2313
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->ensureItemView(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;Z)V

    .line 2314
    iget-object v1, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->unionInvalidRectWithView(Landroid/view/View;)V

    .line 2315
    invoke-static {v0}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 2316
    return-void
.end method

.method private offsetRectToRootCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 2639
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2641
    .local v0, "root":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 2642
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2644
    :cond_0
    return-void
.end method

.method private onDataChanged(Z)V
    .locals 5
    .param p1, "enableAnimations"    # Z

    .prologue
    .line 1768
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1769
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .line 1770
    .local v0, "newItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;>;"
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 1777
    .local v1, "oldItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;>;"
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->clearItems(Ljava/util/HashMap;)V

    .line 1779
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    if-eqz v2, :cond_4

    .line 1781
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    invoke-interface {v2}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->getNumberOfPanes()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I

    .line 1785
    invoke-direct {p0, v0, v1, p1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getAdapterItems(Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    .line 1792
    :goto_1
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1793
    invoke-direct {p0, v1, p1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->handleDeletedItems(Ljava/util/HashMap;Z)V

    .line 1797
    :cond_0
    iput-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    .line 1800
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 1801
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1802
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItemsSorted:Ljava/util/LinkedList;

    new-instance v3, Lcom/sonymobile/movablepanes/paneview/PaneView$7;

    invoke-direct {v3, p0}, Lcom/sonymobile/movablepanes/paneview/PaneView$7;-><init>(Lcom/sonymobile/movablepanes/paneview/PaneView;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1810
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ScrollListener;

    if-eqz v2, :cond_1

    .line 1811
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ScrollListener;

    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v3

    iget v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I

    invoke-interface {v2, v3, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView$ScrollListener;->onScroll(FI)V

    .line 1815
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v2

    iget v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1816
    iget v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->moveToPane(I)Z

    .line 1820
    :cond_2
    iget-boolean v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusDesired:Z

    invoke-virtual {p0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setFocusable(Z)V

    .line 1821
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setDescendantFocusability(I)V

    .line 1824
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->requestLayout()V

    .line 1825
    return-void

    .line 1772
    .end local v0    # "newItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;>;"
    .end local v1    # "oldItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;>;"
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems1:Ljava/util/HashMap;

    .line 1773
    .restart local v0    # "newItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;>;"
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems2:Ljava/util/HashMap;

    .restart local v1    # "oldItems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;>;"
    goto :goto_0

    .line 1787
    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I

    goto :goto_1
.end method

.method private panesToTheLeft(I)Z
    .locals 4
    .param p1, "pane"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2812
    iget-boolean v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDoMirror:Z

    if-eqz v2, :cond_2

    .line 2813
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getNumberOfPanes()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2815
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2813
    goto :goto_0

    .line 2815
    :cond_2
    if-gtz p1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private panesToTheRight(I)Z
    .locals 4
    .param p1, "pane"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2826
    iget-boolean v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDoMirror:Z

    if-eqz v2, :cond_2

    .line 2827
    if-lez p1, :cond_1

    .line 2829
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2827
    goto :goto_0

    .line 2829
    :cond_2
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getNumberOfPanes()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private pixelsToPosition(F)F
    .locals 1
    .param p1, "pixels"    # F

    .prologue
    .line 2517
    iget v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mWidthWithMargin:I

    if-nez v0, :cond_0

    .line 2520
    const/4 v0, 0x0

    .line 2522
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mWidthWithMargin:I

    int-to-float v0, v0

    div-float v0, p1, v0

    goto :goto_0
.end method

.method private positionToPixels(F)I
    .locals 1
    .param p1, "position"    # F

    .prologue
    .line 2506
    iget v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mWidthWithMargin:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private removeItemView(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)V
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .prologue
    .line 2443
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItemViewListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ItemViewListener;

    if-eqz v1, :cond_0

    .line 2444
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItemViewListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ItemViewListener;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {p1}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v2

    iget-object v3, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView$ItemViewListener;->onViewRemoved(ILandroid/view/View;)V

    .line 2447
    :cond_0
    iget-object v1, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeViewInLayout(Landroid/view/View;)V

    .line 2448
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {p1}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->getItemViewType(I)I

    move-result v0

    .line 2449
    .local v0, "viewType":I
    iget-object v1, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->addViewToCache(Landroid/view/View;I)V

    .line 2450
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    .line 2451
    return-void
.end method

.method private removeViewFromCache(I)Landroid/view/View;
    .locals 4
    .param p1, "viewType"    # I

    .prologue
    const/4 v1, 0x0

    .line 2477
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 2478
    .local v0, "viewTypeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/View;>;"
    if-nez v0, :cond_1

    .line 2484
    :cond_0
    :goto_0
    return-object v1

    .line 2481
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2484
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0
.end method

.method private scrollToFocus(Landroid/view/View;I)V
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 2937
    if-eqz p1, :cond_0

    .line 2938
    const/16 v1, 0x82

    if-ne p2, v1, :cond_1

    .line 2939
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 2940
    .local v0, "delta":I
    if-lez v0, :cond_0

    .line 2941
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->pixelsToPosition(F)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->scroll(F)V

    .line 2950
    .end local v0    # "delta":I
    :cond_0
    :goto_0
    return-void

    .line 2943
    :cond_1
    const/16 v1, 0x21

    if-ne p2, v1, :cond_0

    .line 2944
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2945
    .restart local v0    # "delta":I
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingTop()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2946
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->pixelsToPosition(F)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->scroll(F)V

    goto :goto_0
.end method

.method private setStandardRenderer(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)V
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .prologue
    const/4 v2, 0x0

    .line 1403
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mRendererFactory:Lcom/sonymobile/movablepanes/paneview/RendererFactory;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {p1}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sonymobile/movablepanes/paneview/RendererFactory;->getStandardRenderer(I)Lcom/sonymobile/movablepanes/animation/Renderer;

    move-result-object v0

    iput-object v0, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    .line 1404
    iget-object v0, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    if-eqz v0, :cond_0

    .line 1405
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1406
    .local v1, "itemDrawRect":Landroid/graphics/Rect;
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->rendererIsStandard:Z

    .line 1407
    iget-object v0, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v0, v0, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1408
    const/4 v0, 0x0

    iget-object v3, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget v3, v3, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    int-to-float v3, v3

    invoke-direct {p0, v0, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1410
    iget-object v0, p1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/movablepanes/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 1411
    invoke-static {v1}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1413
    .end local v1    # "itemDrawRect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private setupTransformer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1022
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getHeight()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/sonymobile/movablepanes/paneview/Transformer;->beginSetup(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1023
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1024
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 1025
    .local v1, "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v3, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v3, v3, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1026
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v3

    iget-object v4, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget v4, v4, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    int-to-float v4, v4

    invoke-direct {p0, v3, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v4}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->positionToPixels(F)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1028
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1029
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/sonymobile/movablepanes/paneview/Transformer;->setupItem(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1031
    .end local v1    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :cond_0
    invoke-static {v2}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1033
    iput-object v6, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 1035
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    invoke-interface {v3}, Lcom/sonymobile/movablepanes/paneview/Transformer;->finishSetup()V

    .line 1040
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :goto_1
    return-void

    .line 1037
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    invoke-interface {v3}, Lcom/sonymobile/movablepanes/paneview/Transformer;->cleanup()V

    .line 1038
    iput-object v6, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    goto :goto_1
.end method

.method private smartSliderTraverseChildren(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 1262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1263
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1266
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/Button;

    if-nez v2, :cond_0

    instance-of v2, v1, Landroid/widget/CheckedTextView;

    if-nez v2, :cond_0

    instance-of v2, v1, Landroid/widget/Chronometer;

    if-nez v2, :cond_0

    instance-of v2, v1, Landroid/widget/DigitalClock;

    if-eqz v2, :cond_1

    .line 1262
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1272
    .restart local v1    # "view":Landroid/view/View;
    :cond_1
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1273
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBreakTraversal:Z

    .line 1274
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/TextView;->performClick()Z

    .line 1280
    :cond_2
    return-void

    .line 1276
    .restart local v1    # "view":Landroid/view/View;
    :cond_3
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBreakTraversal:Z

    if-nez v2, :cond_0

    .line 1277
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->smartSliderTraverseChildren(Landroid/view/ViewGroup;)V

    goto :goto_1
.end method

.method private smartSliderTraversePane()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1242
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getChildCount()I

    move-result v1

    .line 1243
    .local v1, "numChildren":I
    if-lez v1, :cond_1

    .line 1245
    iput-boolean v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFindFocusableWidget:Z

    .line 1246
    iput-boolean v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBreakTraversal:Z

    .line 1248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-boolean v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBreakTraversal:Z

    if-nez v2, :cond_1

    if-ge v0, v1, :cond_1

    .line 1249
    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1250
    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->smartSliderTraverseChildren(Landroid/view/ViewGroup;)V

    .line 1248
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1253
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private srcBlitChild(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "cache"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2236
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 2237
    .local v7, "cl":I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v9

    .line 2238
    .local v9, "ct":I
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v8

    .line 2239
    .local v8, "cr":I
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 2241
    .local v6, "cb":I
    int-to-float v1, v7

    int-to-float v2, v9

    int-to-float v3, v8

    int-to-float v4, v6

    sget-object v5, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2253
    :goto_0
    return-void

    .line 2245
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 2247
    .local v10, "restoreTo":I
    int-to-float v0, v7

    int-to-float v1, v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2248
    const/4 v0, 0x0

    const/4 v1, 0x0

    sub-int v2, v8, v7

    sub-int v3, v6, v9

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2250
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2252
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method private startDynamicsRunnable()V
    .locals 1

    .prologue
    .line 1652
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->startDynamicsRunnable(Z)V

    .line 1653
    return-void
.end method

.method private startDynamicsRunnable(Z)V
    .locals 1
    .param p1, "startInteraction"    # Z

    .prologue
    .line 1656
    if-eqz p1, :cond_0

    .line 1657
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->interactionStart()V

    .line 1659
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->post(Ljava/lang/Runnable;)Z

    .line 1660
    return-void
.end method

.method private unionInvalidRectWithView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2526
    if-eqz p1, :cond_0

    .line 2528
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 2530
    :cond_0
    return-void
.end method

.method private updateMaxScroll(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1955
    .local p1, "adapterItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;>;"
    iget-boolean v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mKeepMaxScroll:Z

    if-eqz v4, :cond_0

    .line 1969
    :goto_0
    return-void

    .line 1958
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getHeight()I

    move-result v1

    .line 1959
    .local v1, "height":I
    const/4 v4, 0x0

    iput v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F

    .line 1960
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 1961
    .local v0, "adapterItem":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v4, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v4, v1, :cond_1

    .line 1962
    iget-object v4, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->pixelsToPosition(F)F

    move-result v3

    .line 1963
    .local v3, "maxScroll":F
    iget v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    .line 1964
    iput v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F

    goto :goto_1

    .line 1968
    .end local v0    # "adapterItem":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    .end local v3    # "maxScroll":F
    :cond_2
    iget v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F

    const v5, 0x3d4ccccd

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F

    goto :goto_0
.end method

.method private updatePanePosition()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1681
    iget-object v7, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v7}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v4

    .line 1682
    .local v4, "position":F
    iget-object v7, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v7}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v7

    invoke-direct {p0, v7}, Lcom/sonymobile/movablepanes/paneview/PaneView;->positionToPixels(F)I

    move-result v6

    .line 1683
    .local v6, "scroll":I
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 1685
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 1686
    .local v1, "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v7, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v7, v7, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1687
    iget-object v7, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget v7, v7, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    int-to-float v7, v7

    invoke-direct {p0, v4, v7}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v7

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    neg-int v8, v6

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1689
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getHeight()I

    move-result v8

    invoke-virtual {v5, v10, v10, v7, v8}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1691
    iget-object v7, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v7, :cond_2

    .line 1692
    iget-object v7, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1694
    iget-object v7, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/sonymobile/movablepanes/paneview/PaneView;->addViewAndLayoutParams(Landroid/view/View;)V

    .line 1699
    :cond_1
    iget-object v7, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget-object v9, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1700
    iget-object v7, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget-object v9, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1707
    :goto_1
    iget-object v7, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/sonymobile/movablepanes/paneview/PaneView;->unionInvalidRectWithView(Landroid/view/View;)V

    goto :goto_0

    .line 1705
    :cond_2
    const/4 v7, 0x1

    invoke-direct {p0, v1, v5, v7}, Lcom/sonymobile/movablepanes/paneview/PaneView;->ensureItemView(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;Landroid/graphics/Rect;Z)V

    goto :goto_1

    .line 1708
    :cond_3
    iget-object v7, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    if-eqz v7, :cond_0

    iget-boolean v7, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->rendererIsStandard:Z

    if-eqz v7, :cond_0

    :cond_4
    iget-object v7, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1714
    invoke-direct {p0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeItemView(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)V

    .line 1715
    iget-object v7, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mRendererFactory:Lcom/sonymobile/movablepanes/paneview/RendererFactory;

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    if-eqz v7, :cond_0

    .line 1716
    iget-object v7, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mRendererFactory:Lcom/sonymobile/movablepanes/paneview/RendererFactory;

    iget-object v8, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    invoke-interface {v7, v8}, Lcom/sonymobile/movablepanes/paneview/RendererFactory;->recycle(Lcom/sonymobile/movablepanes/animation/Renderer;)V

    .line 1717
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    .line 1718
    iput-boolean v10, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->rendererIsStandard:Z

    goto/16 :goto_0

    .line 1723
    .end local v1    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :cond_5
    iget-object v7, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_7

    .line 1726
    float-to-int v3, v4

    .line 1727
    .local v3, "pane1":I
    if-ltz v3, :cond_6

    iget v7, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I

    if-ge v3, v7, :cond_6

    .line 1728
    iget v7, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateOffsetX:I

    invoke-virtual {p0, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v8

    add-int v2, v7, v8

    .line 1729
    .local v2, "left":I
    iget-object v7, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v7, v2, v10, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 1733
    .end local v2    # "left":I
    :cond_6
    iget v7, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_7

    .line 1734
    iget v7, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateOffsetX:I

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v8

    add-int v2, v7, v8

    .line 1735
    .restart local v2    # "left":I
    iget-object v7, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v7, v2, v10, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 1740
    .end local v2    # "left":I
    .end local v3    # "pane1":I
    :cond_7
    invoke-static {v5}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1744
    iget-object v7, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ScrollListener;

    if-eqz v7, :cond_8

    .line 1745
    iget-object v7, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ScrollListener;

    iget v8, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I

    invoke-interface {v7, v4, v8}, Lcom/sonymobile/movablepanes/paneview/PaneView$ScrollListener;->onScroll(FI)V

    .line 1749
    :cond_8
    invoke-virtual {p0, v10, v10}, Lcom/sonymobile/movablepanes/paneview/PaneView;->awakenScrollBars(IZ)Z

    .line 1752
    iget-object v7, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/sonymobile/movablepanes/paneview/PaneView;->invalidate(Landroid/graphics/Rect;)V

    .line 1753
    return-void
.end method

.method private updateSnapPosition(FFF)F
    .locals 5
    .param p1, "velocityX"    # F
    .param p2, "position"    # F
    .param p3, "snapPosition"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000

    .line 1572
    move v0, p3

    .line 1573
    .local v0, "tmpSnapPosition":F
    iget-boolean v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDoMirror:Z

    if-nez v1, :cond_2

    .line 1574
    iget v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mVelocityThreshold:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    cmpl-float v1, p2, p3

    if-lez v1, :cond_1

    add-float v1, p3, v3

    iget v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 1576
    add-float/2addr v0, v3

    .line 1591
    :cond_0
    :goto_0
    return v0

    .line 1577
    :cond_1
    iget v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mVelocityThreshold:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    cmpg-float v1, p2, p3

    if-gez v1, :cond_0

    cmpl-float v1, p3, v4

    if-lez v1, :cond_0

    .line 1579
    sub-float/2addr v0, v3

    goto :goto_0

    .line 1584
    :cond_2
    iget v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mVelocityThreshold:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    cmpg-float v1, p2, p3

    if-gez v1, :cond_3

    cmpl-float v1, p3, v4

    if-lez v1, :cond_3

    .line 1585
    sub-float/2addr v0, v3

    goto :goto_0

    .line 1586
    :cond_3
    iget v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mVelocityThreshold:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    cmpl-float v1, p2, p3

    if-lez v1, :cond_0

    add-float v1, p3, v3

    iget v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1588
    add-float/2addr v0, v3

    goto :goto_0
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 1057
    invoke-super {p0}, Landroid/widget/AdapterView;->cancelLongPress()V

    .line 1058
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mGestureDetector:Lcom/sonymobile/movablepanes/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->cancelLongPress()V

    .line 1059
    return-void
.end method

.method public clearAllRenderers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 717
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 718
    .local v1, "item":Lcom/sonymobile/movablepanes/paneview/PaneView$Item;
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mRendererFactory:Lcom/sonymobile/movablepanes/paneview/RendererFactory;

    if-eqz v2, :cond_0

    .line 719
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mRendererFactory:Lcom/sonymobile/movablepanes/paneview/RendererFactory;

    iget-object v3, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    invoke-interface {v2, v3}, Lcom/sonymobile/movablepanes/paneview/RendererFactory;->recycle(Lcom/sonymobile/movablepanes/animation/Renderer;)V

    .line 720
    iput-object v4, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    goto :goto_0

    .line 724
    .end local v1    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$Item;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDeletedItems:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;

    .line 725
    .restart local v1    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$Item;
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mRendererFactory:Lcom/sonymobile/movablepanes/paneview/RendererFactory;

    if-eqz v2, :cond_2

    .line 726
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mRendererFactory:Lcom/sonymobile/movablepanes/paneview/RendererFactory;

    iget-object v3, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    invoke-interface {v2, v3}, Lcom/sonymobile/movablepanes/paneview/RendererFactory;->recycle(Lcom/sonymobile/movablepanes/animation/Renderer;)V

    .line 727
    iput-object v4, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    goto :goto_1

    .line 730
    .end local v1    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$Item;
    :cond_3
    return-void
.end method

.method public clearViews()V
    .locals 3

    .prologue
    .line 736
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 737
    .local v1, "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 738
    invoke-direct {p0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeItemView(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)V

    goto :goto_0

    .line 741
    .end local v1    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :cond_1
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1293
    iget v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 1294
    const/4 v3, 0x0

    .line 1300
    :goto_0
    return v3

    .line 1297
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v2

    .line 1298
    .local v2, "scrollPosition":F
    iget v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F

    invoke-static {v2, v4, v3}, Lcom/sonymobile/movablepanes/util/MathUtil;->clamp(FFF)F

    move-result v0

    .line 1299
    .local v0, "clampedScrollPosition":F
    sub-float v3, v0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1300
    .local v1, "outside":F
    const/high16 v3, 0x447a0000

    const/high16 v4, 0x3f800000

    sub-float/2addr v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 6

    .prologue
    const/high16 v5, 0x447a0000

    const/4 v4, 0x0

    .line 1306
    iget v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 1307
    const/4 v3, 0x0

    .line 1317
    :goto_0
    return v3

    .line 1310
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v2

    .line 1311
    .local v2, "scrollPosition":F
    iget v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F

    invoke-static {v2, v4, v3}, Lcom/sonymobile/movablepanes/util/MathUtil;->clamp(FFF)F

    move-result v0

    .line 1312
    .local v0, "clampedScrollPosition":F
    sub-float v3, v0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1314
    .local v1, "outside":F
    iget v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 1315
    add-float v3, v0, v1

    mul-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_0

    .line 1317
    :cond_1
    mul-float v3, v5, v0

    float-to-int v3, v3

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 1324
    iget v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1325
    const/4 v0, 0x0

    .line 1328
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x447a0000

    const/high16 v1, 0x3f800000

    iget v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 1359
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1361
    invoke-direct {p0, p1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->drawBackplate(Landroid/graphics/Canvas;)V

    .line 1363
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    invoke-interface {v2}, Lcom/sonymobile/movablepanes/paneview/Transformer;->isSetupFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1364
    invoke-direct {p0, p1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->drawUsingTransformer(Landroid/graphics/Canvas;)V

    .line 1398
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->drawFocusRect(Landroid/graphics/Canvas;)V

    .line 1400
    return-void

    .line 1366
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    iget-object v2, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->isInteractive(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1372
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1373
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    iget-object v2, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v2, v2, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1374
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    iget-object v3, v3, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget v3, v3, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    int-to-float v3, v3

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v2

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->positionToPixels(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1379
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    iget-object v2, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1380
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v2, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 1385
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItemBackgroundDrawn:Z

    .line 1387
    invoke-static {v1}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1392
    .end local v1    # "rect":Landroid/graphics/Rect;
    :goto_2
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v0

    .line 1394
    .local v0, "position":F
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->drawDeletedItems(Landroid/graphics/Canvas;F)V

    .line 1395
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->drawItems(Landroid/graphics/Canvas;F)V

    goto/16 :goto_0

    .line 1382
    .end local v0    # "position":F
    .restart local v1    # "rect":Landroid/graphics/Rect;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v2, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1389
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_2
    iput-boolean v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItemBackgroundDrawn:Z

    goto :goto_2
.end method

.method public findFocusableWidget()V
    .locals 1

    .prologue
    .line 1287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFindFocusableWidget:Z

    .line 1288
    return-void
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 2960
    invoke-virtual {p0, p0, p1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2962
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .param p1, "currentFocus"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 2967
    const/4 v0, 0x0

    .line 2970
    .local v0, "focusCandidate":Landroid/view/View;
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setDescendantFocusability(I)V

    .line 2972
    iget-boolean v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPreventExternalFocus:Z

    if-eqz v2, :cond_2

    .line 2976
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2983
    :goto_0
    iget-boolean v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPreferExternalFocus:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2986
    invoke-direct {p0, p1, v0, p2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->detectUserPaneSwitch(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2987
    const/4 v0, 0x0

    .line 2991
    :cond_0
    if-nez v0, :cond_3

    .line 2992
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->focusSearchOffScreen(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3004
    :cond_1
    :goto_1
    invoke-direct {p0, v0, p2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->scrollToFocus(Landroid/view/View;I)V

    .line 3006
    return-object v0

    .line 2980
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2993
    :cond_3
    const/16 v2, 0x21

    if-eq p2, v2, :cond_4

    const/16 v2, 0x82

    if-ne p2, v2, :cond_1

    :cond_4
    iget-boolean v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPreferExternalFocus:Z

    if-nez v2, :cond_1

    .line 2995
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->focusSearchOffScreen(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2997
    .local v1, "offScreenFocus":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2998
    move-object v0, v1

    goto :goto_1
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getAdapter()Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/sonymobile/movablepanes/paneview/PaneAdapter;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1340
    const/high16 v0, 0x3f800000

    return v0
.end method

.method public getCurrentPane()I
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v0}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1345
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1349
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1350
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusPaddingTop:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1351
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusPaddingRight:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1352
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusPaddingBottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1353
    return-void
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2557
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2558
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2563
    :goto_0
    return-void

    .line 2561
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getNumberOfPanes()I
    .locals 1

    .prologue
    .line 896
    iget v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I

    return v0
.end method

.method public getPaneAbsoluteOffset(I)I
    .locals 2
    .param p1, "pane"    # I

    .prologue
    .line 925
    const/4 v0, 0x0

    int-to-float v1, p1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v0

    return v0
.end method

.method public getPaneRelativeOffset(I)I
    .locals 2
    .param p1, "pane"    # I

    .prologue
    .line 915
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v0}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v0

    int-to-float v1, p1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getPaneXOffset(FF)I

    move-result v0

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v0}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->positionToPixels(F)I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    .line 554
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1334
    const/high16 v0, 0x3f800000

    return v0
.end method

.method public getVelocityThreshold()I
    .locals 1

    .prologue
    .line 1113
    iget v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mVelocityThreshold:I

    return v0
.end method

.method public hasEnabledItems(I)Z
    .locals 4
    .param p1, "pane"    # I

    .prologue
    .line 1130
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 1131
    .local v1, "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget v2, v2, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->pane:I

    if-ne v2, p1, :cond_0

    .line 1132
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1133
    const/4 v2, 0x1

    .line 1137
    .end local v1    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDoMirror()Z
    .locals 1

    .prologue
    .line 1106
    iget-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDoMirror:Z

    return v0
.end method

.method public isInteracting()Z
    .locals 1

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mIsInteracting:Z

    return v0
.end method

.method public keepMaxScroll(Z)V
    .locals 1
    .param p1, "keepMaxScroll"    # Z

    .prologue
    .line 873
    iput-boolean p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mKeepMaxScroll:Z

    .line 874
    iget-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mKeepMaxScroll:Z

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->updateMaxScroll(Ljava/util/Collection;)V

    .line 876
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 877
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->startDynamicsRunnable()V

    .line 879
    :cond_0
    return-void
.end method

.method public moveToLeftPane()Z
    .locals 1

    .prologue
    .line 954
    iget-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getCurrentPane()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    .line 957
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getCurrentPane()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    goto :goto_0
.end method

.method public moveToNextPane()Z
    .locals 1

    .prologue
    .line 980
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getCurrentPane()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    return v0
.end method

.method public moveToPane(I)Z
    .locals 5
    .param p1, "pane"    # I

    .prologue
    .line 935
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I

    if-ge p1, v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v1}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/Dynamics;->getVelocity()F

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/movablepanes/util/Dynamics;->setState(FFJ)V

    .line 938
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/movablepanes/util/Dynamics;->setMaxPosition(F)V

    .line 939
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/movablepanes/util/Dynamics;->setMinPosition(F)V

    .line 942
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->startDynamicsRunnable()V

    .line 943
    const/4 v0, 0x1

    .line 945
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToPreviousPane()Z
    .locals 1

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getCurrentPane()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    return v0
.end method

.method public moveToRightPane()Z
    .locals 1

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDoMirror:Z

    if-eqz v0, :cond_0

    .line 968
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getCurrentPane()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    .line 970
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getCurrentPane()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->moveToPane(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2585
    if-eqz p1, :cond_0

    .line 2586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 2588
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2589
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1086
    iget-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTouchIsLocked:Z

    if-nez v0, :cond_0

    .line 1089
    const/4 v0, 0x1

    .line 1091
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v6, 0x0

    .line 1204
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 1206
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v4}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v2

    .line 1208
    .local v2, "position":F
    invoke-static {}, Lcom/sonymobile/movablepanes/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1209
    .local v3, "viewRect":Landroid/graphics/Rect;
    sub-int v4, p4, p2

    sub-int v5, p5, p3

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1211
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 1212
    .local v1, "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v4, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    invoke-direct {p0, v4, v2, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->isLocationVisible(Lcom/sonymobile/movablepanes/paneview/PaneLocation;FLandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1215
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->layoutItem(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;F)V

    goto :goto_0

    .line 1216
    :cond_2
    iget-object v4, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1219
    invoke-direct {p0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeItemView(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)V

    goto :goto_0

    .line 1223
    .end local v1    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->updateMaxScroll(Ljava/util/Collection;)V

    .line 1225
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    invoke-interface {v4}, Lcom/sonymobile/movablepanes/paneview/Transformer;->isSetupFinished()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1226
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setupTransformer()V

    .line 1229
    :cond_4
    if-eqz p1, :cond_5

    iget-boolean v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFindFocusableWidget:Z

    if-eqz v4, :cond_5

    .line 1230
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->smartSliderTraversePane()V

    .line 1233
    :cond_5
    invoke-static {v3}, Lcom/sonymobile/movablepanes/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1234
    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->invalidate(Landroid/graphics/Rect;)V

    .line 1235
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000

    .line 1191
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 1192
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 1193
    .local v1, "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1196
    iget-object v2, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    iget-object v3, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v3, v3, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    or-int/2addr v3, v5

    iget-object v4, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

    iget-object v4, v4, Lcom/sonymobile/movablepanes/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    or-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 1200
    .end local v1    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2598
    const/4 v7, 0x2

    if-ne p1, v7, :cond_2

    .line 2599
    const/16 p1, 0x42

    .line 2604
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 2605
    new-instance p2, Landroid/graphics/Rect;

    .end local p2    # "previouslyFocusedRect":Landroid/graphics/Rect;
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 2606
    .restart local p2    # "previouslyFocusedRect":Landroid/graphics/Rect;
    sparse-switch p1, :sswitch_data_0

    .line 2622
    :cond_1
    :goto_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    .line 2624
    .local v1, "focusCandidate":Landroid/view/View;
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2628
    :goto_2
    return v5

    .line 2600
    .end local v1    # "focusCandidate":Landroid/view/View;
    :cond_2
    if-ne p1, v5, :cond_0

    .line 2601
    const/16 p1, 0x11

    goto :goto_0

    .line 2609
    :sswitch_0
    const/4 v4, 0x0

    .line 2610
    .local v4, "top":I
    const/4 v2, 0x0

    .line 2611
    .local v2, "left":I
    invoke-virtual {p2, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 2615
    .end local v2    # "left":I
    .end local v4    # "top":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getHeight()I

    move-result v0

    .line 2616
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getWidth()I

    move-result v3

    .line 2617
    .local v3, "right":I
    invoke-virtual {p2, v3, v0, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .end local v0    # "bottom":I
    .end local v3    # "right":I
    .restart local v1    # "focusCandidate":Landroid/view/View;
    :cond_3
    move v5, v6

    .line 2628
    goto :goto_2

    .line 2606
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->onSizeChanged(IIII)V

    .line 1181
    int-to-float v0, p1

    int-to-float v1, p1

    iget v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMarginF:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mWidthWithMargin:I

    .line 1183
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    .line 1187
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1063
    iget-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTouchIsLocked:Z

    if-nez v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mGestureDetector:Lcom/sonymobile/movablepanes/paneview/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1072
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    iget-boolean v0, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->viewValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    iget-object v0, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1081
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 2570
    invoke-direct {p0, p1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->findItem(Landroid/view/View;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v0

    .line 2571
    .local v0, "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    if-eqz v0, :cond_0

    .line 2572
    iput-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 2577
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2578
    return-void

    .line 2574
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    goto :goto_0
.end method

.method public restoreViews()V
    .locals 0

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->updatePanePosition()V

    .line 748
    return-void
.end method

.method public scroll(F)V
    .locals 6
    .param p1, "deltaPosition"    # F

    .prologue
    const/4 v5, 0x0

    .line 852
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v0

    .line 853
    .local v0, "currentPosition":F
    add-float v1, v0, p1

    .line 855
    .local v1, "newPosition":F
    cmpg-float v2, v1, v5

    if-gez v2, :cond_1

    .line 856
    const/4 v1, 0x0

    .line 861
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v5, v3, v4}, Lcom/sonymobile/movablepanes/util/Dynamics;->setState(FFJ)V

    .line 862
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 863
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->updatePanePosition()V

    .line 864
    return-void

    .line 857
    :cond_1
    iget v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 858
    iget v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 63
    check-cast p1, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setAdapter(Lcom/sonymobile/movablepanes/paneview/PaneAdapter;)V

    return-void
.end method

.method public setAdapter(Lcom/sonymobile/movablepanes/paneview/PaneAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDataSetObserver:Lcom/sonymobile/movablepanes/paneview/PaneView$PaneDataSetObserver;

    invoke-interface {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 563
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    .line 565
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDataSetObserver:Lcom/sonymobile/movablepanes/paneview/PaneView$PaneDataSetObserver;

    invoke-interface {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 569
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->onDataChanged(Z)V

    .line 570
    return-void
.end method

.method public setBackplate(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "backplateDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 808
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplate:Landroid/graphics/drawable/Drawable;

    .line 810
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateBitmap:Landroid/graphics/Bitmap;

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 816
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->createSrcBlitPaint()V

    .line 818
    :cond_1
    return-void
.end method

.method public setBackplateModifiers(II)V
    .locals 0
    .param p1, "backPlateOffsetX"    # I
    .param p2, "backPlateWidth"    # I

    .prologue
    .line 828
    iput p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateOffsetX:I

    .line 829
    iput p2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mBackplateWidth:I

    .line 830
    return-void
.end method

.method public setDeleteItemListener(Lcom/sonymobile/movablepanes/paneview/PaneView$ItemDeleteListener;)V
    .locals 0
    .param p1, "deleteItemListener"    # Lcom/sonymobile/movablepanes/paneview/PaneView$ItemDeleteListener;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDeleteItemListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ItemDeleteListener;

    .line 673
    return-void
.end method

.method public setDoMirror(Z)V
    .locals 0
    .param p1, "doMirror"    # Z

    .prologue
    .line 1099
    iput-boolean p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDoMirror:Z

    .line 1100
    return-void
.end method

.method public setEnableStandardRenderers(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 699
    iput-boolean p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mStandardRenderersEnabled:Z

    .line 700
    iget-boolean v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mStandardRenderersEnabled:Z

    if-eqz v2, :cond_1

    .line 701
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 702
    .local v1, "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    iget-object v2, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 703
    invoke-direct {p0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setStandardRenderer(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)V

    goto :goto_0

    .line 707
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 708
    .restart local v1    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->rendererIsStandard:Z

    goto :goto_1

    .line 711
    .end local v1    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :cond_2
    return-void
.end method

.method public setFocusPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 796
    iput p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusPaddingLeft:I

    .line 797
    iput p2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusPaddingTop:I

    .line 798
    iput p3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusPaddingRight:I

    .line 799
    iput p4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusPaddingBottom:I

    .line 800
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    .prologue
    .line 2954
    iput-boolean p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusDesired:Z

    .line 2955
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 2956
    return-void
.end method

.method public setFocusedItemDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "focusedItemDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 783
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusedItemDrawable:Landroid/graphics/drawable/Drawable;

    .line 784
    return-void
.end method

.method public setInteractionListener(Lcom/sonymobile/movablepanes/paneview/PaneView$InteractionListener;)V
    .locals 0
    .param p1, "interactionListener"    # Lcom/sonymobile/movablepanes/paneview/PaneView$InteractionListener;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mInteractionListener:Lcom/sonymobile/movablepanes/paneview/PaneView$InteractionListener;

    .line 643
    return-void
.end method

.method public setItemViewListener(Lcom/sonymobile/movablepanes/paneview/PaneView$ItemViewListener;)V
    .locals 0
    .param p1, "itemViewListener"    # Lcom/sonymobile/movablepanes/paneview/PaneView$ItemViewListener;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItemViewListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ItemViewListener;

    .line 663
    return-void
.end method

.method public setPaneDynamics(Lcom/sonymobile/movablepanes/util/Dynamics;)V
    .locals 4
    .param p1, "dynamics"    # Lcom/sonymobile/movablepanes/util/Dynamics;

    .prologue
    .line 585
    if-nez p1, :cond_0

    .line 586
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "dynamics cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 589
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v0

    .line 590
    .local v0, "currentPosition":F
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/Dynamics;->getVelocity()F

    move-result v1

    .line 592
    .local v1, "currentVelocity":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sonymobile/movablepanes/util/Dynamics;->setState(FFJ)V

    .line 593
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    .line 595
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mGestureDetector:Lcom/sonymobile/movablepanes/paneview/GestureDetector;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->setEnableHorizontalDrag(Z)V

    .line 596
    return-void
.end method

.method public setPaneMargin(F)V
    .locals 0
    .param p1, "paneMargin"    # F

    .prologue
    .line 756
    iput p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mMarginF:F

    .line 757
    return-void
.end method

.method public setPaneViewTouchListener(Lcom/sonymobile/movablepanes/paneview/PaneView$PaneViewTouchListener;)V
    .locals 0
    .param p1, "paneViewTouchListener"    # Lcom/sonymobile/movablepanes/paneview/PaneView$PaneViewTouchListener;

    .prologue
    .line 765
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneViewTouchListener:Lcom/sonymobile/movablepanes/paneview/PaneView$PaneViewTouchListener;

    .line 766
    return-void
.end method

.method public setPosition(F)V
    .locals 4
    .param p1, "position"    # F

    .prologue
    .line 838
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonymobile/movablepanes/util/Dynamics;->setState(FFJ)V

    .line 839
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v0, p1}, Lcom/sonymobile/movablepanes/util/Dynamics;->setMaxPosition(F)V

    .line 840
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v0, p1}, Lcom/sonymobile/movablepanes/util/Dynamics;->setMinPosition(F)V

    .line 841
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 842
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->updatePanePosition()V

    .line 843
    return-void
.end method

.method public setPreferExternalFocus(Z)V
    .locals 0
    .param p1, "preferExternal"    # Z

    .prologue
    .line 1161
    iput-boolean p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPreferExternalFocus:Z

    .line 1162
    return-void
.end method

.method public setPreventExternalFocus(Z)V
    .locals 0
    .param p1, "preventExternal"    # Z

    .prologue
    .line 1148
    iput-boolean p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPreventExternalFocus:Z

    .line 1149
    return-void
.end method

.method public setRejectPaddingTouch(Z)V
    .locals 0
    .param p1, "rejectPaddingTouch"    # Z

    .prologue
    .line 632
    iput-boolean p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mRejectPaddingTouch:Z

    .line 633
    return-void
.end method

.method public setRendererFactory(Lcom/sonymobile/movablepanes/paneview/RendererFactory;)V
    .locals 0
    .param p1, "rendererFactory"    # Lcom/sonymobile/movablepanes/paneview/RendererFactory;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mRendererFactory:Lcom/sonymobile/movablepanes/paneview/RendererFactory;

    .line 684
    return-void
.end method

.method public setScrollDynamics(Lcom/sonymobile/movablepanes/util/Dynamics;)V
    .locals 4
    .param p1, "dynamics"    # Lcom/sonymobile/movablepanes/util/Dynamics;

    .prologue
    .line 599
    if-nez p1, :cond_0

    .line 600
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "dynamics cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 603
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v0

    .line 604
    .local v0, "currentPosition":F
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/Dynamics;->getVelocity()F

    move-result v1

    .line 606
    .local v1, "currentVelocity":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sonymobile/movablepanes/util/Dynamics;->setState(FFJ)V

    .line 607
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    .line 609
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mGestureDetector:Lcom/sonymobile/movablepanes/paneview/GestureDetector;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->setEnableVerticalDrag(Z)V

    .line 610
    return-void
.end method

.method public setScrollListener(Lcom/sonymobile/movablepanes/paneview/PaneView$ScrollListener;)V
    .locals 3
    .param p1, "scrollListener"    # Lcom/sonymobile/movablepanes/paneview/PaneView$ScrollListener;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ScrollListener;

    .line 621
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ScrollListener;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ScrollListener;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    invoke-virtual {v1}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v1

    iget v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView$ScrollListener;->onScroll(FI)V

    .line 624
    :cond_0
    return-void
.end method

.method public setScrollPosition(F)V
    .locals 4
    .param p1, "position"    # F

    .prologue
    .line 846
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonymobile/movablepanes/util/Dynamics;->setState(FFJ)V

    .line 847
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 848
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->updatePanePosition()V

    .line 849
    return-void
.end method

.method public setSelectedItemDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selectedItemDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItemDrawable:Landroid/graphics/drawable/Drawable;

    .line 775
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 541
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 542
    .local v1, "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 543
    iput-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    goto :goto_0

    .line 546
    .end local v1    # "item":Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    :cond_1
    return-void
.end method

.method public setSrcBlit(Z)V
    .locals 1
    .param p1, "srcBlit"    # Z

    .prologue
    .line 1172
    iput-boolean p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSrcBlit:Z

    .line 1173
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mSrcBlitPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1174
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->createSrcBlitPaint()V

    .line 1176
    :cond_0
    return-void
.end method

.method public setTouchLocked(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 1049
    iput-boolean p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTouchIsLocked:Z

    .line 1050
    if-eqz p1, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mGestureDetector:Lcom/sonymobile/movablepanes/paneview/GestureDetector;

    invoke-virtual {v0}, Lcom/sonymobile/movablepanes/paneview/GestureDetector;->cancelLongPress()V

    .line 1053
    :cond_0
    return-void
.end method

.method public setVelocityThreshold(I)V
    .locals 0
    .param p1, "velocityThreshold"    # I

    .prologue
    .line 1120
    iput p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mVelocityThreshold:I

    .line 1121
    return-void
.end method

.method public transform(Lcom/sonymobile/movablepanes/paneview/Transformer;)V
    .locals 1
    .param p1, "transformer"    # Lcom/sonymobile/movablepanes/paneview/Transformer;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    invoke-interface {v0}, Lcom/sonymobile/movablepanes/paneview/Transformer;->cleanup()V

    .line 1004
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    .line 1005
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mTransformer:Lcom/sonymobile/movablepanes/paneview/Transformer;

    if-eqz v0, :cond_1

    .line 1007
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 1008
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setDescendantFocusability(I)V

    .line 1009
    invoke-virtual {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->requestLayout()V

    .line 1016
    :goto_0
    return-void

    .line 1011
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->updatePanePosition()V

    .line 1012
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->startDynamicsRunnable()V

    .line 1013
    iget-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView;->mFocusDesired:Z

    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setFocusable(Z)V

    .line 1014
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->setDescendantFocusability(I)V

    goto :goto_0
.end method
