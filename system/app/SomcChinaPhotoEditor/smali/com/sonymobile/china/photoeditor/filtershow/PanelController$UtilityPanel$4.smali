.class Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$4;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setSelectFaceToolbar(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;)V
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
    .line 405
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$4;->this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$4;->this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->applyFilter()V

    .line 410
    return-void
.end method
