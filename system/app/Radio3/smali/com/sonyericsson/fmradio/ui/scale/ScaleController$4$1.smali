.class Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4$1;
.super Ljava/lang/Object;
.source "ScaleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;->onLayoutChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4$1;->this$1:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 333
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 334
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4$1;->this$1:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;

    iget-object v1, v1, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleLayout:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$1400(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4$1;->this$1:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;

    iget-object v2, v2, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$000(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 336
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4$1;->this$1:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;

    iget-object v1, v1, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4$1;->this$1:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;

    iget-object v2, v2, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4$1;->this$1:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;

    iget-object v3, v3, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;
    invoke-static {v3}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$600(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/StairView;

    move-result-object v3

    # invokes: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->offsetToScale(Landroid/view/View;Landroid/graphics/Rect;)I
    invoke-static {v2, v3, v0}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$1500(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v2

    # setter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesOffset:I
    invoke-static {v1, v2}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$502(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;I)I

    .line 337
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4$1;->this$1:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;

    iget-object v1, v1, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4$1;->this$1:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;

    iget-object v2, v2, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4$1;->this$1:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;

    iget-object v3, v3, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyTextsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;
    invoke-static {v3}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$200(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/StairView;

    move-result-object v3

    # invokes: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->offsetToScale(Landroid/view/View;Landroid/graphics/Rect;)I
    invoke-static {v2, v3, v0}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$1500(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v2

    # setter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyTextsOffset:I
    invoke-static {v1, v2}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$102(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;I)I

    .line 338
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4$1;->this$1:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;

    iget-object v1, v1, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4$1;->this$1:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;

    iget-object v2, v2, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4$1;->this$1:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;

    iget-object v3, v3, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mStationsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;
    invoke-static {v3}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$400(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/StairView;

    move-result-object v3

    # invokes: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->offsetToScale(Landroid/view/View;Landroid/graphics/Rect;)I
    invoke-static {v2, v3, v0}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$1500(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v2

    # setter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mStationsOffset:I
    invoke-static {v1, v2}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$302(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;I)I

    .line 341
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4$1;->this$1:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;

    iget-object v1, v1, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$4;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mOnPositionChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$1600(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;->ANIMATE_TO_POSITION:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    invoke-interface {v1, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;->onPositionChanged(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;)V

    .line 342
    return-void
.end method
