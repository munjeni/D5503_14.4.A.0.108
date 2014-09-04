.class Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$2;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setRotateToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

.field final synthetic val$imageRotate:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$2;->this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$2;->val$imageRotate:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$2;->val$imageRotate:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->handleRotateButton(I)V

    .line 341
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$2;->val$imageRotate:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->invalidate()V

    .line 342
    return-void
.end method
