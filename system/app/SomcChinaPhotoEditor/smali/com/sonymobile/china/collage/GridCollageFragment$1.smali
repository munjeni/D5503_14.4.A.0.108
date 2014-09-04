.class Lcom/sonymobile/china/collage/GridCollageFragment$1;
.super Ljava/lang/Object;
.source "GridCollageFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 139
    iput-object p1, p0, Lcom/sonymobile/china/collage/GridCollageFragment$1;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment$1;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->previousFocusItem:Lcom/sonymobile/china/collage/grid/GridPaneItemView;
    invoke-static {v0}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$200(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    move-result-object v0

    if-eq v0, p2, :cond_1

    .line 143
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment$1;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->previousFocusItem:Lcom/sonymobile/china/collage/grid/GridPaneItemView;
    invoke-static {v0}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$200(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment$1;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->previousFocusItem:Lcom/sonymobile/china/collage/grid/GridPaneItemView;
    invoke-static {v0}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$200(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->setFocus(Z)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment$1;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    check-cast p2, Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    .end local p2    # "view":Landroid/view/View;
    # setter for: Lcom/sonymobile/china/collage/GridCollageFragment;->previousFocusItem:Lcom/sonymobile/china/collage/grid/GridPaneItemView;
    invoke-static {v0, p2}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$202(Lcom/sonymobile/china/collage/GridCollageFragment;Lcom/sonymobile/china/collage/grid/GridPaneItemView;)Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    .line 147
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment$1;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->previousFocusItem:Lcom/sonymobile/china/collage/grid/GridPaneItemView;
    invoke-static {v0}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$200(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->setFocus(Z)V

    .line 151
    :goto_0
    return-void

    .line 149
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/collage/GridCollageFragment$1;->this$0:Lcom/sonymobile/china/collage/GridCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/GridCollageFragment;->previousFocusItem:Lcom/sonymobile/china/collage/grid/GridPaneItemView;
    invoke-static {v0}, Lcom/sonymobile/china/collage/GridCollageFragment;->access$200(Lcom/sonymobile/china/collage/GridCollageFragment;)Lcom/sonymobile/china/collage/grid/GridPaneItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/grid/GridPaneItemView;->changeFocus()V

    goto :goto_0
.end method
