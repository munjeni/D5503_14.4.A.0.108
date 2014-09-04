.class Lcom/sonymobile/china/photoeditor/filtershow/PanelController$2;
.super Landroid/os/Handler;
.source "PanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/filtershow/PanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)V
    .locals 0

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$2;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1213
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1214
    .local v0, "event":I
    if-nez v0, :cond_0

    .line 1215
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$2;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$2;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$1000(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 1216
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$2;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->cancelProgressBar()V

    .line 1218
    :cond_0
    return-void
.end method
