.class Lcom/sonyericsson/conversations/ui/PileView$4;
.super Ljava/lang/Object;
.source "PileView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/PileView;->getFadeListener()Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/PileView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/PileView;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/PileView$4;->this$0:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView$4;->this$0:Lcom/sonyericsson/conversations/ui/PileView;

    new-instance v1, Lcom/sonyericsson/conversations/ui/PileView$4$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/PileView$4$1;-><init>(Lcom/sonyericsson/conversations/ui/PileView$4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 516
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 517
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 518
    return-void
.end method
