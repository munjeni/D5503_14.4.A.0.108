.class Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 308
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mHistoryButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$000(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 309
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->toggleHistoryPanel()V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mUndoButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$100(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    if-ne v3, p1, :cond_5

    .line 313
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isTextAdded:Z
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$200(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageText:Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$300(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;->setFilterVisibility(Z)V

    .line 315
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isTextAdded:Z
    invoke-static {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$202(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;Z)Z

    .line 316
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$400(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;

    .line 318
    .local v2, "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;
    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->clean()V

    .line 320
    .end local v2    # "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isDoodleAdded:Z
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$500(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 321
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageDoodle:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->setFilterVisibility(Z)V

    .line 322
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isDoodleAdded:Z
    invoke-static {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$502(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;Z)Z

    .line 323
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageDoodle:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->clearDoodles()V

    .line 325
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isStampAdded:Z
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$700(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$800(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 326
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$800(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->applyStamp(Z)V

    .line 327
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isStampAdded:Z
    invoke-static {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$702(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;Z)Z

    .line 328
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageStamps:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$900(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->clearStamp()V

    .line 330
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1000(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getHistory()Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    move-result-object v0

    .line 331
    .local v0, "adapter":Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->undo()I

    move-result v1

    .line 332
    .local v1, "position":I
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1000(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 333
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1000(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    const v5, 0x7f070013

    invoke-virtual {v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->showToast(Ljava/lang/String;)V

    .line 334
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->invalidateViews()V

    goto/16 :goto_0

    .line 337
    .end local v0    # "adapter":Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;
    .end local v1    # "position":I
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mRedoButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1100(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    if-ne v3, p1, :cond_6

    .line 338
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1000(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getHistory()Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    move-result-object v0

    .line 339
    .restart local v0    # "adapter":Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->redo()I

    move-result v1

    .line 340
    .restart local v1    # "position":I
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1000(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 341
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1000(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    const v5, 0x7f070014

    invoke-virtual {v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->showToast(Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->invalidateViews()V

    goto/16 :goto_0

    .line 345
    .end local v0    # "adapter":Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;
    .end local v1    # "position":I
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mSaveButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1200(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Landroid/widget/Button;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 346
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->saveImage(Z)V

    goto/16 :goto_0
.end method
