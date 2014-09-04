.class Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget$1;
.super Ljava/lang/Object;
.source "GridCollageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget$1;->this$1:Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget$1;->this$1:Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;

    iget v0, v0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->mScrollSpeed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget$1;->this$1:Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;

    iget-object v0, v0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;
    invoke-static {v0}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$900(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget$1;->this$1:Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;

    iget v1, v1, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->mScrollSpeed:F

    invoke-virtual {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->scroll(F)V

    .line 528
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget$1;->this$1:Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;

    iget-object v0, v0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferTarget;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;
    invoke-static {v0}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$900(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/movablepanes/paneview/PaneView;->post(Ljava/lang/Runnable;)Z

    .line 530
    :cond_0
    return-void
.end method
