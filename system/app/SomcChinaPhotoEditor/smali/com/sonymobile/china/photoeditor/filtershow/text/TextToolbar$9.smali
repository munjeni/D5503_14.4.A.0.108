.class Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$9;
.super Ljava/lang/Object;
.source "TextToolbar.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$OnHighlightColorSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->createColorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$9;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(IZ)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 466
    if-eqz p2, :cond_0

    .line 467
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$9;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColor:I
    invoke-static {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$802(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;I)I

    .line 468
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$9;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    iput p1, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mColor:I

    .line 469
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$9;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->notifyToolbarChanged()V

    .line 470
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$9;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColorBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->access$900(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 472
    :cond_0
    return-void
.end method
