.class Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;
.super Ljava/lang/Object;
.source "GridCollageFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/GridCollageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollageItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/collage/GridCollageFragment;


# direct methods
.method private constructor <init>(Lcom/sonymobile/china/collage/GridCollageFragment;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/china/collage/GridCollageFragment;Lcom/sonymobile/china/collage/GridCollageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/collage/GridCollageFragment;
    .param p2, "x1"    # Lcom/sonymobile/china/collage/GridCollageFragment$1;

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;-><init>(Lcom/sonymobile/china/collage/GridCollageFragment;)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .param p2, "clickedView"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "paneView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 338
    const/4 v2, -0x1

    if-le p3, v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mCollageAdapter:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$400(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->getCount()I

    move-result v2

    if-eq p3, v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # setter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mLongClickIndex:I
    invoke-static {v2, p3}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$602(Lcom/sonymobile/china/collage/GridCollageFragment;I)I

    .line 340
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mRenderFactory:Lcom/sonymobile/movablepanes/util/BasicRendererFactory;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$700(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/util/BasicRendererFactory;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sonymobile/movablepanes/util/BasicRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 341
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/grid/model/PaneData;

    .line 342
    .local v0, "item":Lcom/sonymobile/china/collage/grid/model/PaneData;
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    new-instance v3, Lcom/sonymobile/china/collage/grid/model/PaneData;

    sget-object v4, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->EMPTY:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    invoke-direct {v3, v4}, Lcom/sonymobile/china/collage/grid/model/PaneData;-><init>(Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;)V

    iput-object v3, v2, Lcom/sonymobile/china/collage/GridCollageFragment;->mHintItem:Lcom/sonymobile/china/collage/grid/model/PaneData;

    .line 344
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 345
    .local v1, "location":I
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    iget-object v3, v3, Lcom/sonymobile/china/collage/GridCollageFragment;->mHintItem:Lcom/sonymobile/china/collage/grid/model/PaneData;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 349
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mRenderFactory:Lcom/sonymobile/movablepanes/util/BasicRendererFactory;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$700(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/util/BasicRendererFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p3}, Lcom/sonymobile/movablepanes/util/BasicRendererFactory;->setNextAddRenderer(Lcom/sonymobile/movablepanes/animation/Renderer;I)V

    .line 351
    invoke-virtual {p2, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 352
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mCollageAdapter:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$400(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->notifyDataSetChanged()V

    .line 353
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mTransferView:Lcom/sonymobile/movablepanes/transfer/TransferView;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$1000(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/transfer/TransferView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mTransferSource:Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;
    invoke-static {v3}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$800(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/china/collage/GridCollageFragment$MyTransferSource;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/collage/GridCollageFragment$CollageItemLongClickListener;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mPaneView:Lcom/sonymobile/movablepanes/paneview/PaneView;
    invoke-static {v4}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$900(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/movablepanes/paneview/PaneView;

    move-result-object v4

    invoke-virtual {v2, v3, v0, p2, v4}, Lcom/sonymobile/movablepanes/transfer/TransferView;->transferView(Lcom/sonymobile/movablepanes/transfer/TransferSource;Ljava/lang/Object;Landroid/view/View;Landroid/view/View;)Lcom/sonymobile/movablepanes/animation/Renderer;

    .line 355
    .end local v0    # "item":Lcom/sonymobile/china/collage/grid/model/PaneData;
    .end local v1    # "location":I
    :cond_0
    return v6
.end method
