.class Landroid/widget/Editor$SelectionEndHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3681
    iput-object p1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    .line 3682
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3683
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 3696
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 3687
    if-eqz p2, :cond_0

    .line 3688
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 3690
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public setActionPopupWindow(Landroid/widget/Editor$ActionPopupWindow;)V
    .locals 0
    .param p1, "actionPopupWindow"    # Landroid/widget/Editor$ActionPopupWindow;

    .prologue
    .line 3727
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 3728
    return-void
.end method

.method public updatePosition(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3708
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 3711
    .local v1, "offset":I
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 3712
    .local v2, "selectionStart":I
    if-gt v1, v2, :cond_0

    .line 3713
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getSurrogateAdjCharSize(I)I
    invoke-static {v3, v2}, Landroid/widget/Editor;->access$3500(Landroid/widget/Editor;I)I

    move-result v3

    add-int v0, v2, v3

    .line 3714
    .local v0, "min":I
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3717
    .end local v0    # "min":I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 3719
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3720
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->ensureMagnifierView()V
    invoke-static {v3}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)V

    .line 3721
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mMagnifierView:Landroid/widget/MagnifierView;
    invoke-static {v3}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)Landroid/widget/MagnifierView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/MagnifierView;->setShape(I)V

    .line 3722
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mMagnifierView:Landroid/widget/MagnifierView;
    invoke-static {v3}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)Landroid/widget/MagnifierView;

    move-result-object v3

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/widget/MagnifierView;->showAt(II)V

    .line 3724
    :cond_1
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 3701
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 3703
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 3704
    return-void
.end method
