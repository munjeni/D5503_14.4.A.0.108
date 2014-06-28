.class Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;
.super Ljava/lang/Object;
.source "SomcCallWidgetMenuFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/widget/SomcCallWidgetMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAnimationListener"
.end annotation


# instance fields
.field private mState:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$State;

.field final synthetic this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;


# direct methods
.method private constructor <init>(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;)V
    .locals 1

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;->this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$State;->IDLE:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$State;

    iput-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;->mState:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;Lcom/android/phone/widget/SomcCallWidgetMenuFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/widget/SomcCallWidgetMenuFragment;
    .param p2, "x1"    # Lcom/android/phone/widget/SomcCallWidgetMenuFragment$1;

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;-><init>(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 519
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;->this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    # operator-- for: Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mNbrOfCurrentActiveAnimations:I
    invoke-static {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->access$710(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;)I

    .line 512
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;->mState:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$State;

    sget-object v1, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$State;->REFRESH_AFTER_COLLAPSE:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$State;

    if-ne v0, v1, :cond_0

    .line 513
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$State;->IDLE:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$State;

    iput-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;->mState:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$State;

    .line 514
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;->this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;->this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    # getter for: Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->access$400(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->refresh(Ljava/util/List;)V

    .line 516
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 508
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;->this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    # operator++ for: Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mNbrOfCurrentActiveAnimations:I
    invoke-static {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->access$708(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;)I

    .line 505
    return-void
.end method

.method public setState(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/phone/widget/SomcCallWidgetMenuFragment$State;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;->mState:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$State;

    .line 501
    return-void
.end method
