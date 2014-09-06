.class Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;
.super Ljava/lang/Object;
.source "FocusRectanglesAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeOutAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;->this$0:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$1;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;->this$0:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    # getter for: Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTargetView:Landroid/view/View;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->access$100(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;->this$0:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    # getter for: Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTargetView:Landroid/view/View;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->access$100(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;->this$0:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTargetView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->access$102(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;Landroid/view/View;)Landroid/view/View;

    .line 114
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 119
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 106
    return-void
.end method
