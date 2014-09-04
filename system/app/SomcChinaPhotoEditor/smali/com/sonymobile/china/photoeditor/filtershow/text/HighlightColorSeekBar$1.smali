.class Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$1;
.super Ljava/lang/Object;
.source "HighlightColorSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->setOnColorChangeListener(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$OnHighlightColorSeekBarChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

.field final synthetic val$listener:Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$OnHighlightColorSeekBarChangeListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$OnHighlightColorSeekBarChangeListener;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$1;->val$listener:Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$OnHighlightColorSeekBarChangeListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$1;->val$listener:Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$OnHighlightColorSeekBarChangeListener;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->colors:[I
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->access$000(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;)[I

    move-result-object v1

    aget v1, v1, p2

    invoke-interface {v0, v1, p3}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$OnHighlightColorSeekBarChangeListener;->onColorChanged(IZ)V

    .line 143
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mIndex:I
    invoke-static {v0, p2}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->access$102(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;I)I

    .line 144
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mW:I
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->access$200(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mH:I
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->access$300(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;)I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->colors:[I
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->access$000(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->mIndex:I
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->access$100(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;)I

    move-result v2

    aget v1, v1, v2

    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->setThumb(I)V
    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->access$400(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;I)V

    .line 147
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 151
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 155
    return-void
.end method
