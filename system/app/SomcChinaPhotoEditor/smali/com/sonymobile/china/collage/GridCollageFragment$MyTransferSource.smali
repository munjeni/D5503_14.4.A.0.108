.class Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;
.super Ljava/lang/Object;
.source "GridCollageFragment.java"

# interfaces
.implements Lcom/sonymobile/movablepanes/transfer/TransferSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/GridCollageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTransferSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/collage/GridCollageFragment;


# direct methods
.method private constructor <init>(Lcom/sonymobile/china/collage/GridCollageFragment;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/china/collage/GridCollageFragment;Lcom/sonymobile/china/collage/GridCollageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/collage/GridCollageFragment;
    .param p2, "x1"    # Lcom/sonymobile/china/collage/GridCollageFragment$1;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;-><init>(Lcom/sonymobile/china/collage/GridCollageFragment;)V

    return-void
.end method


# virtual methods
.method public onTransferCanceled(Ljava/lang/Object;Landroid/view/View;Lcom/sonymobile/movablepanes/animation/Renderer;)Lcom/sonymobile/movablepanes/animation/Renderer;
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "renderer"    # Lcom/sonymobile/movablepanes/animation/Renderer;

    .prologue
    const/4 v3, 0x0

    .line 366
    iget-object v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mLongClickIndex:I
    invoke-static {v1}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$600(Lcom/sonymobile/china/collage/GridCollageFragment;)I

    move-result v0

    .line 369
    .local v0, "dropLocation":I
    iget-object v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;
    invoke-static {v1}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    iget-object v2, v2, Lcom/sonymobile/china/collage/GridCollageFragment;->mHintItem:Lcom/sonymobile/china/collage/grid/model/PaneData;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 370
    iget-object v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    iput-object v3, v1, Lcom/sonymobile/china/collage/GridCollageFragment;->mHintItem:Lcom/sonymobile/china/collage/grid/model/PaneData;

    .line 372
    iget-object v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;
    invoke-static {v1}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;

    move-result-object v1

    check-cast p1, Lcom/sonymobile/china/collage/grid/model/PaneData;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 377
    iget-object v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mRenderFactory:Lcom/sonymobile/movablepanes/util/BasicRendererFactory;
    invoke-static {v1}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$700(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/util/BasicRendererFactory;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/sonymobile/movablepanes/util/BasicRendererFactory;->setNextAddRenderer(Lcom/sonymobile/movablepanes/animation/Renderer;I)V

    .line 382
    iget-object v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mCollageAdapter:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;
    invoke-static {v1}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$400(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->notifyDataSetChanged()V

    .line 383
    iget-object v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sonymobile/china/collage/GridCollageFragment;->mLongPressing:Z

    .line 384
    return-object v3
.end method

.method public onTransferCompleted()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonymobile/china/collage/GridCollageFragment;->mLongPressing:Z

    .line 394
    return-void
.end method
