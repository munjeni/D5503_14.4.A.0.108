.class Lcom/sonymobile/movablepanes/paneview/PaneView$6;
.super Ljava/lang/Object;
.source "PaneView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/movablepanes/paneview/PaneView;->createDynamicsRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;


# direct methods
.method constructor <init>(Lcom/sonymobile/movablepanes/paneview/PaneView;)V
    .locals 0

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$6;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v3, 0x3a83126f

    .line 1631
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1632
    .local v0, "now":J
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$6;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1300(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/movablepanes/util/Dynamics;->update(J)V

    .line 1633
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$6;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1600(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/movablepanes/util/Dynamics;->update(J)V

    .line 1634
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$6;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # invokes: Lcom/sonymobile/movablepanes/paneview/PaneView;->updatePanePosition()V
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$2000(Lcom/sonymobile/movablepanes/paneview/PaneView;)V

    .line 1636
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$6;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1300(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lcom/sonymobile/movablepanes/util/Dynamics;->isAtRest(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$6;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1600(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lcom/sonymobile/movablepanes/util/Dynamics;->isAtRest(FF)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1639
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$6;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, p0, v3, v4}, Lcom/sonymobile/movablepanes/paneview/PaneView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1647
    :goto_0
    return-void

    .line 1643
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$6;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mPaneDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1300(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/Dynamics;->adjustPositionAndVelocity()V

    .line 1644
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$6;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mScrollDynamics:Lcom/sonymobile/movablepanes/util/Dynamics;
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$1600(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/util/Dynamics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/movablepanes/util/Dynamics;->adjustPositionAndVelocity()V

    .line 1645
    iget-object v2, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$6;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # invokes: Lcom/sonymobile/movablepanes/paneview/PaneView;->interactionEnd()V
    invoke-static {v2}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$2100(Lcom/sonymobile/movablepanes/paneview/PaneView;)V

    goto :goto_0
.end method
