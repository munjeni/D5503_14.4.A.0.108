.class Lcom/android/phone/LargeCallView$MenuListener$1;
.super Ljava/lang/Object;
.source "LargeCallView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LargeCallView$MenuListener;->createAreaHeightAnimation(Landroid/view/ViewGroup;Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/LargeCallView$MenuListener;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/phone/LargeCallView$MenuListener;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 2734
    iput-object p1, p0, Lcom/android/phone/LargeCallView$MenuListener$1;->this$1:Lcom/android/phone/LargeCallView$MenuListener;

    iput-object p2, p0, Lcom/android/phone/LargeCallView$MenuListener$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 2737
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2738
    .local v1, "val":I
    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2739
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2740
    iget-object v2, p0, Lcom/android/phone/LargeCallView$MenuListener$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2741
    return-void
.end method
