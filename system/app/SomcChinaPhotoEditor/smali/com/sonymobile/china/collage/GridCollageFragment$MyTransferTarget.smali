.class Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;
.super Ljava/lang/Object;
.source "GridCollageFragment.java"

# interfaces
.implements Lcom/sonymobile/movablepanes/transfer/TransferTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/GridCollageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTransferTarget"
.end annotation


# instance fields
.field final mScrollBottomLimit:I

.field private final mScrollRunnable:Ljava/lang/Runnable;

.field mScrollSpeed:F

.field final mScrollTopLimit:I

.field final synthetic this$0:Lcom/sonymobile/china/collage/GridCollageFragment;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/collage/GridCollageFragment;I)V
    .locals 7
    .param p2, "paneViewHeight"    # I

    .prologue
    .line 410
    iput-object p1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 523
    new-instance v4, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget$1;-><init>(Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;)V

    iput-object v4, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->mScrollRunnable:Ljava/lang/Runnable;

    .line 411
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 412
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Lcom/sonymobile/china/collage/GridCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 415
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 416
    .local v3, "tv":Landroid/util/TypedValue;
    const/4 v0, -0x1

    .line 417
    .local v0, "actionBarHeight":I
    const/4 v2, -0x1

    .line 418
    .local v2, "statusBarHeight":I
    invoke-virtual {p1}, Lcom/sonymobile/china/collage/GridCollageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x10102eb

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 419
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Lcom/sonymobile/china/collage/GridCollageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 423
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/china/collage/GridCollageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 427
    add-int v4, v0, v2

    iput v4, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->mScrollTopLimit:I

    .line 428
    iget v4, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->mScrollTopLimit:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->mScrollBottomLimit:I

    .line 429
    return-void
.end method


# virtual methods
.method public cancelHint(Lcom/sonymobile/movablepanes/animation/Renderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/sonymobile/movablepanes/animation/Renderer;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;
    invoke-static {v0}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    iget-object v1, v1, Lcom/sonymobile/china/collage/GridCollageFragment;->mHintItem:Lcom/sonymobile/china/collage/grid/model/PaneData;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 536
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sonymobile/china/collage/GridCollageFragment;->mHintItem:Lcom/sonymobile/china/collage/grid/model/PaneData;

    .line 537
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mCollageAdapter:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;
    invoke-static {v0}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$400(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->notifyDataSetChanged()V

    .line 538
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;
    invoke-static {v0}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$900(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 539
    return-void
.end method

.method public drop(Ljava/lang/Object;Landroid/view/View;Lcom/sonymobile/movablepanes/animation/Renderer;Lcom/sonymobile/movablepanes/transfer/TransferTarget$DropListener;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "renderer"    # Lcom/sonymobile/movablepanes/animation/Renderer;
    .param p4, "dropListener"    # Lcom/sonymobile/movablepanes/transfer/TransferTarget$DropListener;

    .prologue
    .line 433
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    iget-object v3, v3, Lcom/sonymobile/china/collage/GridCollageFragment;->mHintItem:Lcom/sonymobile/china/collage/grid/model/PaneData;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "dropLocation":I
    move-object v0, p1

    .line 434
    check-cast v0, Lcom/sonymobile/china/collage/grid/model/PaneData;

    .line 435
    .local v0, "dropItem":Lcom/sonymobile/china/collage/grid/model/PaneData;
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    iput v1, v2, Lcom/sonymobile/china/collage/GridCollageFragment;->mDropIndex:I

    .line 438
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    iget-object v3, v3, Lcom/sonymobile/china/collage/GridCollageFragment;->mHintItem:Lcom/sonymobile/china/collage/grid/model/PaneData;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 439
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sonymobile/china/collage/GridCollageFragment;->mHintItem:Lcom/sonymobile/china/collage/grid/model/PaneData;

    .line 443
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 447
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$900(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getLeft()I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;
    invoke-static {v3}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$900(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/paneview/PaneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getScrollOffset()I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;
    invoke-static {v4}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$900(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/paneview/PaneView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    invoke-interface {p3, v2, v3, v4, v5}, Lcom/sonymobile/movablepanes/animation/Renderer;->offset(IIJ)V

    .line 453
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mRenderFactory:Lcom/sonymobile/movablepanes/util/BasicRendererFactory;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$700(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/util/BasicRendererFactory;

    move-result-object v2

    invoke-virtual {v2, p3, v1}, Lcom/sonymobile/movablepanes/util/BasicRendererFactory;->setNextAddRenderer(Lcom/sonymobile/movablepanes/animation/Renderer;I)V

    .line 458
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mCollageAdapter:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$400(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->notifyDataSetChanged()V

    .line 461
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mLongClickIndex:I
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$600(Lcom/sonymobile/china/collage/GridCollageFragment;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 466
    :cond_0
    if-eqz p4, :cond_1

    .line 467
    const/4 v2, 0x1

    invoke-interface {p4, v2}, Lcom/sonymobile/movablepanes/transfer/TransferTarget$DropListener;->dropFinished(Z)V

    .line 470
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$900(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/paneview/PaneView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 471
    return-void
.end method

.method public hint(Ljava/lang/Object;Landroid/view/View;IILcom/sonymobile/movablepanes/animation/Renderer;)Z
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "offsetView"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "renderer"    # Lcom/sonymobile/movablepanes/animation/Renderer;

    .prologue
    .line 479
    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mCollageAdapter:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;
    invoke-static {v3}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$400(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->getLocationIndex(II)I

    move-result v0

    .line 498
    .local v0, "hintLocation":I
    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    iget-object v3, v3, Lcom/sonymobile/china/collage/GridCollageFragment;->mHintItem:Lcom/sonymobile/china/collage/grid/model/PaneData;

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 499
    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;
    invoke-static {v3}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    iget-object v4, v4, Lcom/sonymobile/china/collage/GridCollageFragment;->mHintItem:Lcom/sonymobile/china/collage/grid/model/PaneData;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 500
    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;
    invoke-static {v3}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/collage/grid/model/PaneData;

    .line 501
    .local v2, "replaceItem":Lcom/sonymobile/china/collage/grid/model/PaneData;
    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;
    invoke-static {v3}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mLongClickIndex:I
    invoke-static {v4}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$600(Lcom/sonymobile/china/collage/GridCollageFragment;)I

    move-result v4

    invoke-interface {v3, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 502
    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;
    invoke-static {v3}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    iget-object v4, v4, Lcom/sonymobile/china/collage/GridCollageFragment;->mHintItem:Lcom/sonymobile/china/collage/grid/model/PaneData;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 503
    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;
    invoke-static {v3}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 504
    .local v1, "location":I
    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;
    invoke-static {v3}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    iget-object v4, v4, Lcom/sonymobile/china/collage/GridCollageFragment;->mHintItem:Lcom/sonymobile/china/collage/grid/model/PaneData;

    invoke-interface {v3, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 505
    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mCollageAdapter:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;
    invoke-static {v3}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$400(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->notifyDataSetChanged()V

    .line 509
    .end local v1    # "location":I
    .end local v2    # "replaceItem":Lcom/sonymobile/china/collage/grid/model/PaneData;
    :cond_0
    iget v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->mScrollTopLimit:I

    if-ge p4, v3, :cond_1

    .line 510
    const v3, -0x445c28f6

    iput v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->mScrollSpeed:F

    .line 511
    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;
    invoke-static {v3}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$900(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/paneview/PaneView;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->post(Ljava/lang/Runnable;)Z

    .line 520
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 512
    :cond_1
    iget v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->mScrollBottomLimit:I

    if-le p4, v3, :cond_2

    .line 513
    const v3, 0x3ba3d70a

    iput v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->mScrollSpeed:F

    .line 514
    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;
    invoke-static {v3}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$900(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/paneview/PaneView;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 516
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->mScrollSpeed:F

    .line 517
    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;
    invoke-static {v3}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$900(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/paneview/PaneView;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
