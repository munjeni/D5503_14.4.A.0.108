.class Lcom/android/phone/SomcSlidingTab$2;
.super Ljava/lang/Object;
.source "SomcSlidingTab.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcSlidingTab;->animateGhostMore(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcSlidingTab;

.field final synthetic val$amount:I

.field final synthetic val$sliderState:I


# direct methods
.method constructor <init>(Lcom/android/phone/SomcSlidingTab;II)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/phone/SomcSlidingTab$2;->this$0:Lcom/android/phone/SomcSlidingTab;

    iput p2, p0, Lcom/android/phone/SomcSlidingTab$2;->val$amount:I

    iput p3, p0, Lcom/android/phone/SomcSlidingTab$2;->val$sliderState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x1

    .line 786
    iget v0, p0, Lcom/android/phone/SomcSlidingTab$2;->val$amount:I

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab$2;->this$0:Lcom/android/phone/SomcSlidingTab;

    # getter for: Lcom/android/phone/SomcSlidingTab;->mAbortGhostAnimation:Z
    invoke-static {v0}, Lcom/android/phone/SomcSlidingTab;->access$400(Lcom/android/phone/SomcSlidingTab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab$2;->this$0:Lcom/android/phone/SomcSlidingTab;

    iget v1, p0, Lcom/android/phone/SomcSlidingTab$2;->val$amount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/phone/SomcSlidingTab$2;->val$sliderState:I

    # invokes: Lcom/android/phone/SomcSlidingTab;->animateGhostMore(II)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/SomcSlidingTab;->access$300(Lcom/android/phone/SomcSlidingTab;II)V

    .line 793
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab$2;->this$0:Lcom/android/phone/SomcSlidingTab;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z
    invoke-static {v0, v1}, Lcom/android/phone/SomcSlidingTab;->access$502(Lcom/android/phone/SomcSlidingTab;Z)Z

    .line 790
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab$2;->this$0:Lcom/android/phone/SomcSlidingTab;

    # getter for: Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/SomcSlidingTab;->access$600(Lcom/android/phone/SomcSlidingTab;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab$2;->this$0:Lcom/android/phone/SomcSlidingTab;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcSlidingTab;->resetSlider(Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 783
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 780
    return-void
.end method
