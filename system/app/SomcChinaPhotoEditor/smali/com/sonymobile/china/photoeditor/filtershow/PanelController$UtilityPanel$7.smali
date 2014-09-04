.class Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$7;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->unselect()Landroid/view/ViewPropertyAnimator;
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
    .line 564
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$7;->this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$7;->this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->access$700(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 568
    return-void
.end method
