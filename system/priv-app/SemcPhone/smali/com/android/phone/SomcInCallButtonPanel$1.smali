.class Lcom/android/phone/SomcInCallButtonPanel$1;
.super Ljava/lang/Object;
.source "SomcInCallButtonPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallButtonPanel;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcInCallButtonPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallButtonPanel;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/phone/SomcInCallButtonPanel$1;->this$0:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$1;->this$0:Lcom/android/phone/SomcInCallButtonPanel;

    # getter for: Lcom/android/phone/SomcInCallButtonPanel;->mView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel;->access$100(Lcom/android/phone/SomcInCallButtonPanel;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 539
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 542
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 545
    return-void
.end method
