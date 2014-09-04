.class Lcom/sonymobile/china/collage/GridCollageFragment$2;
.super Ljava/lang/Object;
.source "GridCollageFragment.java"

# interfaces
.implements Lcom/sonymobile/movablepanes/paneview/PaneView$ItemDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/collage/GridCollageFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/collage/GridCollageFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/collage/GridCollageFragment;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$2;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemAdded(Landroid/view/View;IJII)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "x"    # I
    .param p6, "y"    # I

    .prologue
    .line 169
    check-cast p1, Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p5, p6}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->handleCrossEvent(II)Z

    move-result v0

    .line 170
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$2;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # setter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mCrossClickPosition:I
    invoke-static {v1, p2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$502(Lcom/sonymobile/china/collage/GridCollageFragment;I)I

    .line 172
    iget-object v1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$2;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonymobile/china/collage/utils/ImageUtils;->pickImage(Ljava/lang/Object;I)V

    .line 175
    :cond_0
    return v0
.end method

.method public onItemDeleted(Landroid/view/View;IJII)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "x"    # I
    .param p6, "y"    # I

    .prologue
    .line 157
    check-cast p1, Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p5, p6}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->handleDeleteEvent(II)Z

    move-result v0

    .line 158
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 159
    iget-object v3, p0, Lcom/sonymobile/china/collage/GridCollageFragment$2;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$2;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/collage/grid/model/PaneData;

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/grid/model/PaneData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->removePicture(Landroid/graphics/Bitmap;)Z

    .line 160
    new-instance v1, Lcom/sonymobile/china/collage/grid/model/PaneData;

    sget-object v2, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->CROSS:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    invoke-direct {v1, v2}, Lcom/sonymobile/china/collage/grid/model/PaneData;-><init>(Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;)V

    .line 161
    .local v1, "pd":Lcom/sonymobile/china/collage/grid/model/PaneData;
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$2;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mModel:Ljava/util/List;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$300(Lcom/sonymobile/china/collage/GridCollageFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 162
    iget-object v2, p0, Lcom/sonymobile/china/collage/GridCollageFragment$2;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->mCollageAdapter:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;
    invoke-static {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$400(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->notifyDataSetChanged()V

    .line 164
    .end local v1    # "pd":Lcom/sonymobile/china/collage/grid/model/PaneData;
    :cond_0
    return v0
.end method
