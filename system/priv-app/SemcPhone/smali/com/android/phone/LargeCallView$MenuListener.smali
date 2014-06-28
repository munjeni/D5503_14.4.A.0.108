.class Lcom/android/phone/LargeCallView$MenuListener;
.super Ljava/lang/Object;
.source "LargeCallView.java"

# interfaces
.implements Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LargeCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LargeCallView;


# direct methods
.method private constructor <init>(Lcom/android/phone/LargeCallView;)V
    .locals 0

    .prologue
    .line 2649
    iput-object p1, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/LargeCallView;Lcom/android/phone/LargeCallView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/LargeCallView;
    .param p2, "x1"    # Lcom/android/phone/LargeCallView$1;

    .prologue
    .line 2649
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView$MenuListener;-><init>(Lcom/android/phone/LargeCallView;)V

    return-void
.end method

.method private animateHeldCallPanel(Landroid/animation/AnimatorSet$Builder;Z)V
    .locals 5
    .param p1, "animatorBuilder"    # Landroid/animation/AnimatorSet$Builder;
    .param p2, "expanded"    # Z

    .prologue
    .line 2664
    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/android/phone/LargeCallView;->access$1600(Lcom/android/phone/LargeCallView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 2666
    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/android/phone/LargeCallView;->access$1600(Lcom/android/phone/LargeCallView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v2, :cond_3

    .line 2668
    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/android/phone/LargeCallView;->access$1600(Lcom/android/phone/LargeCallView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2669
    .local v0, "origPos":I
    if-eqz p2, :cond_2

    .line 2670
    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mMenuHeight:I
    invoke-static {v2}, Lcom/android/phone/LargeCallView;->access$1700(Lcom/android/phone/LargeCallView;)I

    move-result v2

    add-int v1, v0, v2

    .line 2675
    .local v1, "targetYPos":I
    :goto_0
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animate heldCallPanel to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/LargeCallView;->access$500(Lcom/android/phone/LargeCallView;Ljava/lang/String;)V

    .line 2676
    :cond_0
    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/android/phone/LargeCallView;->access$1600(Lcom/android/phone/LargeCallView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/phone/LargeCallView$MenuListener;->createAreaSlideAnimation(Landroid/view/ViewGroup;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2683
    .end local v0    # "origPos":I
    .end local v1    # "targetYPos":I
    :cond_1
    :goto_1
    return-void

    .line 2672
    .restart local v0    # "origPos":I
    :cond_2
    move v1, v0

    .restart local v1    # "targetYPos":I
    goto :goto_0

    .line 2679
    .end local v0    # "origPos":I
    .end local v1    # "targetYPos":I
    :cond_3
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    const-string v3, "Reposition heldCallPanel"

    # invokes: Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/LargeCallView;->access$500(Lcom/android/phone/LargeCallView;Ljava/lang/String;)V

    .line 2680
    :cond_4
    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/android/phone/LargeCallView;->access$1600(Lcom/android/phone/LargeCallView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mMenuHeight:I
    invoke-static {v2}, Lcom/android/phone/LargeCallView;->access$1700(Lcom/android/phone/LargeCallView;)I

    move-result v2

    int-to-float v2, v2

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private createAreaHeightAnimation(Landroid/view/ViewGroup;Z)Landroid/animation/ValueAnimator;
    .locals 6
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "expanded"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2724
    if-eqz p2, :cond_0

    .line 2725
    new-array v1, v1, [I

    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I
    invoke-static {v2}, Lcom/android/phone/LargeCallView;->access$2000(Lcom/android/phone/LargeCallView;)I

    move-result v2

    aput v2, v1, v4

    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I
    invoke-static {v2}, Lcom/android/phone/LargeCallView;->access$2000(Lcom/android/phone/LargeCallView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mMenuHeight:I
    invoke-static {v3}, Lcom/android/phone/LargeCallView;->access$1700(Lcom/android/phone/LargeCallView;)I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2731
    .local v0, "widgetAreaHeightAnimation":Landroid/animation/ValueAnimator;
    :goto_0
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40800000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2733
    new-instance v1, Lcom/android/phone/LargeCallView$MenuListener$1;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/LargeCallView$MenuListener$1;-><init>(Lcom/android/phone/LargeCallView$MenuListener;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2743
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2744
    return-object v0

    .line 2728
    .end local v0    # "widgetAreaHeightAnimation":Landroid/animation/ValueAnimator;
    :cond_0
    new-array v1, v1, [I

    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I
    invoke-static {v2}, Lcom/android/phone/LargeCallView;->access$2000(Lcom/android/phone/LargeCallView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mMenuHeight:I
    invoke-static {v3}, Lcom/android/phone/LargeCallView;->access$1700(Lcom/android/phone/LargeCallView;)I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v1, v4

    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I
    invoke-static {v2}, Lcom/android/phone/LargeCallView;->access$2000(Lcom/android/phone/LargeCallView;)I

    move-result v2

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "widgetAreaHeightAnimation":Landroid/animation/ValueAnimator;
    goto :goto_0
.end method

.method private createAreaSlideAnimation(Landroid/view/ViewGroup;I)Landroid/animation/ValueAnimator;
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "targetYPos"    # I

    .prologue
    .line 2749
    const-string v1, "y"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v4, p2

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2750
    .local v0, "widgetAreaYAnimation":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2751
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40800000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2753
    return-object v0
.end method

.method private createAreaSlideAnimation(Landroid/view/ViewGroup;Z)Landroid/animation/ValueAnimator;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "expanded"    # Z

    .prologue
    .line 2757
    if-eqz p2, :cond_0

    .line 2758
    iget-object v0, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mMenuHeight:I
    invoke-static {v0}, Lcom/android/phone/LargeCallView;->access$1700(Lcom/android/phone/LargeCallView;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView$MenuListener;->createAreaSlideAnimation(Landroid/view/ViewGroup;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2760
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView$MenuListener;->createAreaSlideAnimation(Landroid/view/ViewGroup;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0
.end method

.method private createButtonRotateAnimation(Landroid/view/ViewGroup;Z)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "expanded"    # Z

    .prologue
    const/4 v3, 0x2

    .line 2708
    if-eqz p2, :cond_0

    .line 2709
    iget-object v1, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mCallWidgetMenuButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/LargeCallView;->access$1900(Lcom/android/phone/LargeCallView;)Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, "rotation"

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2715
    .local v0, "buttonRotate":Landroid/animation/ObjectAnimator;
    :goto_0
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2716
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40800000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2718
    return-object v0

    .line 2712
    .end local v0    # "buttonRotate":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mCallWidgetMenuButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/LargeCallView;->access$1900(Lcom/android/phone/LargeCallView;)Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, "rotation"

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "buttonRotate":Landroid/animation/ObjectAnimator;
    goto :goto_0

    .line 2709
    :array_0
    .array-data 4
        0x0
        0x43340000
    .end array-data

    .line 2712
    :array_1
    .array-data 4
        0x43340000
        0x0
    .end array-data
.end method


# virtual methods
.method public contentChanged(I)V
    .locals 2
    .param p1, "nbrVisible"    # I

    .prologue
    .line 2698
    if-lez p1, :cond_0

    .line 2699
    iget-object v0, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mCallWidgetMenuButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/LargeCallView;->access$1900(Lcom/android/phone/LargeCallView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2703
    :goto_0
    return-void

    .line 2701
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mCallWidgetMenuButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/LargeCallView;->access$1900(Lcom/android/phone/LargeCallView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public menuTransition(Landroid/animation/AnimatorSet$Builder;Z)V
    .locals 5
    .param p1, "animatorBuilder"    # Landroid/animation/AnimatorSet$Builder;
    .param p2, "expanded"    # Z

    .prologue
    .line 2686
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "menuTransition expanded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/LargeCallView;->access$500(Lcom/android/phone/LargeCallView;Ljava/lang/String;)V

    .line 2687
    :cond_0
    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/phone/LargeCallView;->access$1800(Lcom/android/phone/LargeCallView;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0700af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2688
    .local v1, "widgetAreaMain":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/phone/LargeCallView;->access$1800(Lcom/android/phone/LargeCallView;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0700b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2689
    .local v0, "widgetAreaDialog":Landroid/view/ViewGroup;
    invoke-direct {p0, v1, p2}, Lcom/android/phone/LargeCallView$MenuListener;->createAreaHeightAnimation(Landroid/view/ViewGroup;Z)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2690
    invoke-direct {p0, v1, p2}, Lcom/android/phone/LargeCallView$MenuListener;->createAreaSlideAnimation(Landroid/view/ViewGroup;Z)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2691
    invoke-direct {p0, v0, p2}, Lcom/android/phone/LargeCallView$MenuListener;->createAreaHeightAnimation(Landroid/view/ViewGroup;Z)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2692
    invoke-direct {p0, v0, p2}, Lcom/android/phone/LargeCallView$MenuListener;->createAreaSlideAnimation(Landroid/view/ViewGroup;Z)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2693
    invoke-direct {p0, v1, p2}, Lcom/android/phone/LargeCallView$MenuListener;->createButtonRotateAnimation(Landroid/view/ViewGroup;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2694
    invoke-direct {p0, p1, p2}, Lcom/android/phone/LargeCallView$MenuListener;->animateHeldCallPanel(Landroid/animation/AnimatorSet$Builder;Z)V

    .line 2695
    return-void
.end method

.method public widgetSelected(Lcom/android/phone/widget/ISomcCallWidget;)V
    .locals 3
    .param p1, "widget"    # Lcom/android/phone/widget/ISomcCallWidget;

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    invoke-virtual {v0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2653
    iget-object v0, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    iget-object v0, v0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x20

    invoke-interface {v0, v1, p1}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 2661
    :cond_0
    :goto_0
    return-void

    .line 2656
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    .line 2657
    iget-object v0, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MenuListener: Widget not selected isDtmfDialPadOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener;->this$0:Lcom/android/phone/LargeCallView;

    invoke-virtual {v2}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/LargeCallView;->access$500(Lcom/android/phone/LargeCallView;Ljava/lang/String;)V

    goto :goto_0
.end method
