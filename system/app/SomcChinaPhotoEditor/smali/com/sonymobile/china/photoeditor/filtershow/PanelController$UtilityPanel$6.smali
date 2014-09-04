.class Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$6;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$6;->this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 455
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 456
    .local v2, "index":I
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$6;->this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    iget-object v4, v4, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getAllFaceRec()Ljava/util/ArrayList;

    move-result-object v0

    .line 457
    .local v0, "allFaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;>;"
    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$6$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$6$1;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$6;)V

    .line 463
    .local v1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 464
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;

    .line 465
    .local v3, "item":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->isSelected()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->setSelected(Z)V

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-nez v4, :cond_0

    move v6, v5

    :cond_0
    invoke-virtual {p1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 467
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$6;->this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    iget-object v4, v4, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$400(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateImagePresets(Z)V

    .line 468
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$6;->this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    iget-object v4, v4, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$400(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->invalidate()V

    .line 469
    return-void

    :cond_1
    move v4, v6

    .line 465
    goto :goto_0
.end method
