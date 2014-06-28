.class Landroid/widget/Editor$SelectionStartHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3629
    iput-object p1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    .line 3630
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3631
    return-void
.end method


# virtual methods
.method public getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;
    .locals 1

    .prologue
    .line 3675
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    return-object v0
.end method

.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 3644
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 3635
    if-eqz p2, :cond_0

    .line 3636
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 3638
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 3656
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 3659
    .local v1, "offset":I
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 3660
    .local v2, "selectionEnd":I
    if-lt v1, v2, :cond_0

    .line 3661
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    add-int/lit8 v4, v2, -0x2

    # invokes: Landroid/widget/Editor;->getSurrogateAdjCharSize(I)I
    invoke-static {v3, v4}, Landroid/widget/Editor;->access$3500(Landroid/widget/Editor;I)I

    move-result v3

    sub-int v0, v2, v3

    .line 3662
    .local v0, "max":I
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3665
    .end local v0    # "max":I
    :cond_0
    invoke-virtual {p0, v1, v5}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 3667
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3668
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->ensureMagnifierView()V
    invoke-static {v3}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)V

    .line 3669
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mMagnifierView:Landroid/widget/MagnifierView;
    invoke-static {v3}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)Landroid/widget/MagnifierView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/MagnifierView;->setShape(I)V

    .line 3670
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mMagnifierView:Landroid/widget/MagnifierView;
    invoke-static {v3}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)Landroid/widget/MagnifierView;

    move-result-object v3

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/widget/MagnifierView;->showAt(II)V

    .line 3672
    :cond_1
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 3649
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 3651
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 3652
    return-void
.end method
