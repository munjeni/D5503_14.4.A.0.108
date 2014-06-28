.class Landroid/widget/Gallery$FlingRunnable;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method public constructor <init>(Landroid/widget/Gallery;)V
    .locals 2

    .prologue
    .line 1436
    iput-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1437
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1438
    return-void
.end method

.method static synthetic access$100(Landroid/widget/Gallery$FlingRunnable;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Gallery$FlingRunnable;
    .param p1, "x1"    # Z

    .prologue
    .line 1425
    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery$FlingRunnable;

    .prologue
    .line 1425
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 2
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    .line 1477
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1479
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    # invokes: Landroid/widget/Gallery;->scrollIntoSlots()V
    invoke-static {v0}, Landroid/widget/Gallery;->access$500(Landroid/widget/Gallery;)V

    .line 1480
    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1443
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1485
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v5, v5, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v5, :cond_0

    .line 1486
    invoke-direct {p0, v8}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1526
    :goto_0
    return-void

    .line 1490
    :cond_0
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    const/4 v6, 0x0

    # setter for: Landroid/widget/Gallery;->mShouldStopFling:Z
    invoke-static {v5, v6}, Landroid/widget/Gallery;->access$602(Landroid/widget/Gallery;Z)Z

    .line 1492
    iget-object v3, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1493
    .local v3, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 1494
    .local v1, "more":Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1498
    .local v4, "x":I
    iget v5, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    sub-int v0, v5, v4

    .line 1501
    .local v0, "delta":I
    if-lez v0, :cond_2

    .line 1503
    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mIsRtl:Z
    invoke-static {v5}, Landroid/widget/Gallery;->access$800(Landroid/widget/Gallery;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-object v7, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    :goto_1
    # setter for: Landroid/widget/Gallery;->mDownTouchPosition:I
    invoke-static {v6, v5}, Landroid/widget/Gallery;->access$702(Landroid/widget/Gallery;I)I

    .line 1507
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mPaddingLeft:I
    invoke-static {v6}, Landroid/widget/Gallery;->access$900(Landroid/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mPaddingRight:I
    invoke-static {v6}, Landroid/widget/Gallery;->access$1000(Landroid/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1518
    :goto_2
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5, v0}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    .line 1520
    if-eqz v1, :cond_4

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mShouldStopFling:Z
    invoke-static {v5}, Landroid/widget/Gallery;->access$600(Landroid/widget/Gallery;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1521
    iput v4, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1522
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1503
    :cond_1
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_1

    .line 1510
    :cond_2
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 1511
    .local v2, "offsetToLast":I
    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mIsRtl:Z
    invoke-static {v5}, Landroid/widget/Gallery;->access$800(Landroid/widget/Gallery;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    :goto_3
    # setter for: Landroid/widget/Gallery;->mDownTouchPosition:I
    invoke-static {v6, v5}, Landroid/widget/Gallery;->access$702(Landroid/widget/Gallery;I)I

    .line 1515
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mPaddingRight:I
    invoke-static {v6}, Landroid/widget/Gallery;->access$1100(Landroid/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mPaddingLeft:I
    invoke-static {v6}, Landroid/widget/Gallery;->access$1200(Landroid/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 1511
    :cond_3
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-object v7, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 1524
    .end local v2    # "offsetToLast":I
    :cond_4
    invoke-direct {p0, v8}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6
    .param p1, "distance"    # I

    .prologue
    const/4 v1, 0x0

    .line 1458
    if-nez p1, :cond_0

    .line 1465
    :goto_0
    return-void

    .line 1460
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    .line 1462
    iput v1, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1463
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    iget-object v2, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mAnimationDuration:I
    invoke-static {v2}, Landroid/widget/Gallery;->access$400(Landroid/widget/Gallery;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1464
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 9
    .param p1, "initialVelocity"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 1446
    if-nez p1, :cond_0

    .line 1455
    :goto_0
    return-void

    .line 1448
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    .line 1450
    if-gez p1, :cond_1

    move v1, v6

    .line 1451
    .local v1, "initialX":I
    :goto_1
    iput v1, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1452
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1454
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v1    # "initialX":I
    :cond_1
    move v1, v2

    .line 1450
    goto :goto_1
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    .line 1468
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1469
    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1470
    return-void
.end method
