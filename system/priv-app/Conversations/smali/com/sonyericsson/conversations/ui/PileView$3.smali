.class Lcom/sonyericsson/conversations/ui/PileView$3;
.super Ljava/lang/Object;
.source "PileView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/PileView;->getExpandingListener()Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/PileView;

.field final synthetic val$me:Lcom/sonyericsson/conversations/ui/PileView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/PileView;Lcom/sonyericsson/conversations/ui/PileView;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/PileView$3;->this$0:Lcom/sonyericsson/conversations/ui/PileView;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/PileView$3;->val$me:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView$3;->val$me:Lcom/sonyericsson/conversations/ui/PileView;

    new-instance v1, Lcom/sonyericsson/conversations/ui/PileView$3$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/PileView$3$1;-><init>(Lcom/sonyericsson/conversations/ui/PileView$3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 446
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 447
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 448
    return-void
.end method
