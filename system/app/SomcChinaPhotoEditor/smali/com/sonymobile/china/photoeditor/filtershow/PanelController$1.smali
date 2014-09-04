.class Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->setEditActionBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

.field final synthetic val$applyButton:Landroid/widget/Button;

.field final synthetic val$cancelButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;->val$applyButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;->val$cancelButton:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1122
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;->val$applyButton:Landroid/widget/Button;

    if-ne v2, p1, :cond_0

    .line 1123
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->applyFilter()V

    .line 1125
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;->val$cancelButton:Landroid/widget/Button;

    if-ne v2, p1, :cond_2

    .line 1126
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$400(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v2

    instance-of v2, v2, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;

    if-eqz v2, :cond_1

    .line 1127
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$400(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;->cancelUpdateImagePreset()V

    .line 1130
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$800(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getHistory()Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    move-result-object v0

    .line 1131
    .local v0, "adapter":Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getHistoryPosition()I

    move-result v1

    .line 1132
    .local v1, "position":I
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$800(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 1133
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->showProgressBar()V

    .line 1134
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mMasterImage:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$800(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->requestFilteredImages()V

    .line 1135
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mDisableFilterButtons:Z
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$900(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1136
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->enableFilterButtons()V

    .line 1137
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    const/4 v3, 0x0

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mDisableFilterButtons:Z
    invoke-static {v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$902(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;Z)Z

    .line 1140
    .end local v0    # "adapter":Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;
    .end local v1    # "position":I
    :cond_2
    return-void
.end method
