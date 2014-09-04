.class Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$1;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setCropToolbar()V
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
    .line 302
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$1;->this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$1;->this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setAspectButton(I)V

    .line 306
    return-void
.end method
