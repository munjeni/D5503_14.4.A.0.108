.class Lcom/sonymobile/movablepanes/paneview/PaneView$5;
.super Ljava/lang/Object;
.source "PaneView.java"

# interfaces
.implements Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/movablepanes/paneview/PaneView;->createGestureListener()Lcom/sonymobile/movablepanes/paneview/GestureDetector$GestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private horizontalDrag:Z

.field final synthetic this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;


# direct methods
.method constructor <init>(Lcom/sonymobile/movablepanes/paneview/PaneView;)V
    .locals 0

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;
    invoke-static {v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$100(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v1

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->isInteractive(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;
    invoke-static {v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$100(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v1

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1521
    const/4 v7, 0x0

    .line 1522
    .local v7, "handled":Z
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mDeleteItemListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ItemDeleteListener;
    invoke-static {v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1800(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$ItemDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mDeleteItemListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ItemDeleteListener;
    invoke-static {v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1800(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$ItemDeleteListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v1

    iget-object v1, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v2

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v3

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->id:J
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$600(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)J

    move-result-wide v3

    move v5, p1

    move v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/sonymobile/movablepanes/paneview/PaneView$ItemDeleteListener;->onItemDeleted(Landroid/view/View;IJII)Z

    move-result v7

    .line 1525
    if-nez v7, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mDeleteItemListener:Lcom/sonymobile/movablepanes/paneview/PaneView$ItemDeleteListener;
    invoke-static {v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1800(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$ItemDeleteListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v1

    iget-object v1, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v2

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v3

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->id:J
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$600(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)J

    move-result-wide v3

    move v5, p1

    move v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/sonymobile/movablepanes/paneview/PaneView$ItemDeleteListener;->onItemAdded(Landroid/view/View;IJII)Z

    move-result v7

    .line 1530
    :cond_0
    if-nez v7, :cond_1

    .line 1531
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v1

    iget-object v1, v1, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v2

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v3

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->id:J
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$600(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1537
    .end local v7    # "handled":Z
    :cond_1
    :goto_0
    return-void

    .line 1534
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneViewTouchListener:Lcom/sonymobile/movablepanes/paneview/PaneView$PaneViewTouchListener;
    invoke-static {v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1100(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$PaneViewTouchListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1535
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneViewTouchListener:Lcom/sonymobile/movablepanes/paneview/PaneView$PaneViewTouchListener;
    invoke-static {v0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1100(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$PaneViewTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/movablepanes/paneview/PaneView$PaneViewTouchListener;->onClick(II)V

    goto :goto_0
.end method

.method public onFling(FF)V
    .locals 6
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 1497
    iget-boolean v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->horizontalDrag:Z

    if-eqz v3, :cond_0

    .line 1498
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    neg-float v4, p1

    # invokes: Lcom/sonymobile/movablepanes/paneview/PaneView;->pixelsToPosition(F)F
    invoke-static {v3, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1200(Lcom/sonymobile/movablepanes/paneview/PaneView;F)F

    move-result v1

    .line 1499
    .local v1, "scaledVelocity":F
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1300(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v0

    .line 1500
    .local v0, "position":F
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1300(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/sonymobile/movablepanes/util/Dynamics;->setState(FFJ)V

    .line 1502
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I
    invoke-static {v5}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1400(Lcom/sonymobile/movablepanes/paneview/PaneView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/sonymobile/movablepanes/util/MathUtil;->clamp(III)I

    move-result v3

    int-to-float v2, v3

    .line 1504
    .local v2, "snapPosition":F
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # invokes: Lcom/sonymobile/movablepanes/paneview/PaneView;->updateSnapPosition(FFF)F
    invoke-static {v3, p1, v0, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1500(Lcom/sonymobile/movablepanes/paneview/PaneView;FFF)F

    move-result v2

    .line 1505
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1300(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/movablepanes/util/Dynamics;->setMaxPosition(F)V

    .line 1506
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1300(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/movablepanes/util/Dynamics;->setMinPosition(F)V

    .line 1515
    .end local v2    # "snapPosition":F
    :goto_0
    return-void

    .line 1508
    .end local v0    # "position":F
    .end local v1    # "scaledVelocity":F
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    neg-float v4, p2

    # invokes: Lcom/sonymobile/movablepanes/paneview/PaneView;->pixelsToPosition(F)F
    invoke-static {v3, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1200(Lcom/sonymobile/movablepanes/paneview/PaneView;F)F

    move-result v1

    .line 1509
    .restart local v1    # "scaledVelocity":F
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1600(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v0

    .line 1510
    .restart local v0    # "position":F
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1600(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/sonymobile/movablepanes/util/Dynamics;->setState(FFJ)V

    .line 1512
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1600(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F
    invoke-static {v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1700(Lcom/sonymobile/movablepanes/paneview/PaneView;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/movablepanes/util/Dynamics;->setMaxPosition(F)V

    .line 1513
    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1600(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonymobile/movablepanes/util/Dynamics;->setMinPosition(F)V

    goto :goto_0
.end method

.method public onHorizontalDrag(I)V
    .locals 6
    .param p1, "dx"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1540
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # invokes: Lcom/sonymobile/movablepanes/paneview/PaneView;->interactionStart()V
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1900(Lcom/sonymobile/movablepanes/paneview/PaneView;)V

    .line 1541
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    invoke-virtual {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1542
    iput-boolean v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->horizontalDrag:Z

    .line 1543
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1300(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v0

    .line 1544
    .local v0, "currentPosition":F
    cmpg-float v1, v0, v5

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mNumberOfPanes:I
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1400(Lcom/sonymobile/movablepanes/paneview/PaneView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 1545
    :cond_0
    int-to-float v1, p1

    const v2, 0x3ecccccd

    mul-float/2addr v1, v2

    float-to-int p1, v1

    .line 1547
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1300(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    int-to-float v3, p1

    # invokes: Lcom/sonymobile/movablepanes/paneview/PaneView;->pixelsToPosition(F)F
    invoke-static {v2, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1200(Lcom/sonymobile/movablepanes/paneview/PaneView;F)F

    move-result v2

    sub-float v2, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/sonymobile/movablepanes/util/Dynamics;->setState(FFJ)V

    .line 1549
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # invokes: Lcom/sonymobile/movablepanes/paneview/PaneView;->updatePanePosition()V
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$2000(Lcom/sonymobile/movablepanes/paneview/PaneView;)V

    .line 1550
    return-void
.end method

.method public onLongPress(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 1476
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1477
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    .line 1478
    .local v0, "listener":Landroid/widget/AdapterView$OnItemLongClickListener;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v2

    iget-object v2, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1479
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v2

    iget-object v2, v2, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v3

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I
    invoke-static {v3}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$400(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v4

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->id:J
    invoke-static {v4}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->access$600(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 1481
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    const/4 v2, 0x0

    # setter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v1, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$402(Lcom/sonymobile/movablepanes/paneview/PaneView;Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 1482
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$900(Lcom/sonymobile/movablepanes/paneview/PaneView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->invalidate(Landroid/graphics/Rect;)V

    .line 1483
    const/4 v1, 0x1

    .line 1493
    .end local v0    # "listener":Landroid/widget/AdapterView$OnItemLongClickListener;
    :cond_0
    :goto_0
    return v1

    .line 1489
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneViewTouchListener:Lcom/sonymobile/movablepanes/paneview/PaneView$PaneViewTouchListener;
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1100(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$PaneViewTouchListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1490
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneViewTouchListener:Lcom/sonymobile/movablepanes/paneview/PaneView$PaneViewTouchListener;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1100(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneView$PaneViewTouchListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/sonymobile/movablepanes/paneview/PaneView$PaneViewTouchListener;->onLongPress(II)Z

    move-result v1

    goto :goto_0
.end method

.method public onNotClickOrLongPress()V
    .locals 2

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$900(Lcom/sonymobile/movablepanes/paneview/PaneView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->invalidate(Landroid/graphics/Rect;)V

    .line 1567
    return-void
.end method

.method public onTouchEnd()V
    .locals 2

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$402(Lcom/sonymobile/movablepanes/paneview/PaneView;Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 1472
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    const/4 v1, 0x0

    # invokes: Lcom/sonymobile/movablepanes/paneview/PaneView;->startDynamicsRunnable(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1000(Lcom/sonymobile/movablepanes/paneview/PaneView;Z)V

    .line 1473
    return-void
.end method

.method public onTouchStart(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mDynamicsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$700(Lcom/sonymobile/movablepanes/paneview/PaneView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1466
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # invokes: Lcom/sonymobile/movablepanes/paneview/PaneView;->getContainingItem(II)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v1, p1, p2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$800(Lcom/sonymobile/movablepanes/paneview/PaneView;II)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v1

    # setter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    invoke-static {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$402(Lcom/sonymobile/movablepanes/paneview/PaneView;Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .line 1467
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mInvalidRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$900(Lcom/sonymobile/movablepanes/paneview/PaneView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->invalidate(Landroid/graphics/Rect;)V

    .line 1468
    return-void
.end method

.method public onVerticalDrag(I)V
    .locals 6
    .param p1, "dy"    # I

    .prologue
    const/4 v5, 0x0

    .line 1553
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # invokes: Lcom/sonymobile/movablepanes/paneview/PaneView;->interactionStart()V
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1900(Lcom/sonymobile/movablepanes/paneview/PaneView;)V

    .line 1554
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    invoke-virtual {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1555
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->horizontalDrag:Z

    .line 1556
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1600(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/movablepanes/util/Dynamics;->getPosition()F

    move-result v0

    .line 1557
    .local v0, "currentPosition":F
    cmpg-float v1, v0, v5

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mMaxScroll:F
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1700(Lcom/sonymobile/movablepanes/paneview/PaneView;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 1558
    :cond_0
    int-to-float v1, p1

    const v2, 0x3ecccccd

    mul-float/2addr v1, v2

    float-to-int p1, v1

    .line 1560
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1600(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    int-to-float v3, p1

    # invokes: Lcom/sonymobile/movablepanes/paneview/PaneView;->pixelsToPosition(F)F
    invoke-static {v2, v3}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1200(Lcom/sonymobile/movablepanes/paneview/PaneView;F)F

    move-result v2

    sub-float v2, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/sonymobile/movablepanes/util/Dynamics;->setState(FFJ)V

    .line 1562
    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$5;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # invokes: Lcom/sonymobile/movablepanes/paneview/PaneView;->updatePanePosition()V
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$2000(Lcom/sonymobile/movablepanes/paneview/PaneView;)V

    .line 1563
    return-void
.end method
