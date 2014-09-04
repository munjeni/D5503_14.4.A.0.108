.class Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$3;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setStraightenToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

.field final synthetic val$imageStraighten:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$3;->this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$3;->val$imageStraighten:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 368
    move v2, p2

    .line 369
    .local v2, "parameter":I
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$3;->val$imageStraighten:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->getMaxStraightenAngle()F

    move-result v3

    float-to-int v0, v3

    .line 370
    .local v0, "maxp":I
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$3;->val$imageStraighten:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->getMinStraightenAngle()F

    move-result v3

    float-to-int v1, v3

    .line 371
    .local v1, "minp":I
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$3;->this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->uiToParameter(IIII)I
    invoke-static {v3, p2, v1, v0, v4}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->access$500(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;IIII)I

    move-result v2

    .line 372
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$3;->val$imageStraighten:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;

    invoke-virtual {v3, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->onNewValue(I)V

    .line 373
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$3;->val$imageStraighten:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->setModeMove()V

    .line 378
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$3;->val$imageStraighten:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->setModeUp()V

    .line 383
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$3;->val$imageStraighten:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->invalidate()V

    .line 384
    return-void
.end method
