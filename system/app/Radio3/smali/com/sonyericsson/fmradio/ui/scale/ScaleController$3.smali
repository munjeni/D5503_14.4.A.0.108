.class Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;
.super Ljava/lang/Object;
.source "ScaleController.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/scale/ScaleController;-><init>(Landroid/view/ViewGroup;Lcom/stericsson/hardware/fm/FmBand;ILcom/sonyericsson/fmradio/util/FrequencyFormatter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

.field final synthetic val$fmBand:Lcom/stericsson/hardware/fm/FmBand;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->val$fmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionChanged(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;)V
    .locals 11
    .param p1, "movementSource"    # Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    .prologue
    .line 274
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$000(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getPosition()I

    move-result v2

    .line 276
    .local v2, "currentPosition":I
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyTextsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$200(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/StairView;

    move-result-object v8

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyTextsOffset:I
    invoke-static {v9}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$100(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->setPosition(I)V

    .line 277
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mStationsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$400(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/StairView;

    move-result-object v8

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mStationsOffset:I
    invoke-static {v9}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$300(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->setPosition(I)V

    .line 278
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$600(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/StairView;

    move-result-object v8

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesOffset:I
    invoke-static {v9}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$500(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->setPosition(I)V

    .line 282
    sget-object v8, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;->TOUCH:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    if-ne p1, v8, :cond_1

    .line 283
    neg-int v8, v2

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;
    invoke-static {v9}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$000(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v0, v8, v9

    .line 285
    .local v0, "centerPosition":I
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mTotalScaleWidth:I
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$700(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I

    move-result v8

    invoke-static {v0, v8}, Lcom/sonyericsson/fmradio/ui/widget/WidgetUtils;->wrapPosition(II)I

    move-result v7

    .line 287
    .local v7, "wrappedCenterPosition":I
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$800(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I

    move-result v8

    rem-int v8, v7, v8

    sub-int v8, v0, v8

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I
    invoke-static {v9}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$800(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v1, v8, v9

    .line 291
    .local v1, "centerPositionOfSelectedFrequency":I
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$000(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v6, v1, v8

    .line 293
    .local v6, "snapPosition":I
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$900(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    move-result-object v8

    const/high16 v9, 0x42c80000

    const/high16 v10, 0x3f000000

    invoke-virtual {v8, v9, v10}, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;->setSpring(FF)V

    .line 294
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$900(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    move-result-object v8

    neg-int v9, v6

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->setMinPosition(F)V

    .line 295
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$900(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    move-result-object v8

    neg-int v9, v6

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->setMaxPosition(F)V

    .line 298
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mTotalScaleWidth:I
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$700(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I

    move-result v8

    invoke-static {v1, v8}, Lcom/sonyericsson/fmradio/ui/widget/WidgetUtils;->wrapPosition(II)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F
    invoke-static {v9}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$1000(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I
    invoke-static {v9}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$1100(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I

    move-result v9

    add-int v3, v8, v9

    .line 301
    .local v3, "frequency":I
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->val$fmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v8, v3}, Lcom/stericsson/hardware/fm/FmBand;->isFrequencyValid(I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mPreviousFrequency:I
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$1200(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I

    move-result v8

    if-eq v3, v8, :cond_1

    .line 302
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleControllerListeners:Ljava/util/Set;
    invoke-static {v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$1300(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;

    .line 303
    .local v5, "l":Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;
    invoke-interface {v5, v3}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;->onFrequencyChanged(I)V

    goto :goto_0

    .line 305
    .end local v5    # "l":Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;
    :cond_0
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # setter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mPreviousFrequency:I
    invoke-static {v8, v3}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$1202(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;I)I

    .line 308
    .end local v0    # "centerPosition":I
    .end local v1    # "centerPositionOfSelectedFrequency":I
    .end local v3    # "frequency":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "snapPosition":I
    .end local v7    # "wrappedCenterPosition":I
    :cond_1
    return-void
.end method

.method public onTouchState(Z)V
    .locals 3
    .param p1, "isActive"    # Z

    .prologue
    .line 313
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$3;->this$0:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    # getter for: Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleControllerListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->access$1300(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;

    .line 314
    .local v1, "l":Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;
    invoke-interface {v1, p1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;->onTouchState(Z)V

    goto :goto_0

    .line 316
    .end local v1    # "l":Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;
    :cond_0
    return-void
.end method
