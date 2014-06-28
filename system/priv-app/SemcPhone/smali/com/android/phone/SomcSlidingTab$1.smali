.class Lcom/android/phone/SomcSlidingTab$1;
.super Ljava/lang/Object;
.source "SomcSlidingTab.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcSlidingTab;->animateGhost(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcSlidingTab;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcSlidingTab;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/phone/SomcSlidingTab$1;->this$0:Lcom/android/phone/SomcSlidingTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x1

    .line 733
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab$1;->this$0:Lcom/android/phone/SomcSlidingTab;

    # getter for: Lcom/android/phone/SomcSlidingTab;->mResetAfterGhost:Z
    invoke-static {v0}, Lcom/android/phone/SomcSlidingTab;->access$000(Lcom/android/phone/SomcSlidingTab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab$1;->this$0:Lcom/android/phone/SomcSlidingTab;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingTab;->resetSlider(Z)V

    .line 739
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab$1;->this$0:Lcom/android/phone/SomcSlidingTab;

    # setter for: Lcom/android/phone/SomcSlidingTab;->mLongpressGhostStarted:Z
    invoke-static {v0, v1}, Lcom/android/phone/SomcSlidingTab;->access$102(Lcom/android/phone/SomcSlidingTab;Z)Z

    .line 737
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab$1;->this$0:Lcom/android/phone/SomcSlidingTab;

    const/16 v1, 0x190

    iget-object v2, p0, Lcom/android/phone/SomcSlidingTab$1;->this$0:Lcom/android/phone/SomcSlidingTab;

    # getter for: Lcom/android/phone/SomcSlidingTab;->mSliderState:B
    invoke-static {v2}, Lcom/android/phone/SomcSlidingTab;->access$200(Lcom/android/phone/SomcSlidingTab;)B

    move-result v2

    # invokes: Lcom/android/phone/SomcSlidingTab;->animateGhostMore(II)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/SomcSlidingTab;->access$300(Lcom/android/phone/SomcSlidingTab;II)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 730
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 727
    return-void
.end method
