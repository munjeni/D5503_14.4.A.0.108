.class Lcom/sonyericsson/conversations/ui/PileView$6;
.super Ljava/lang/Object;
.source "PileView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/PileView;->getCollapseListener(Lcom/sonyericsson/conversations/ui/PileViewItem;ZLandroid/view/animation/AnimationSet;)Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/PileView;

.field final synthetic val$child:Lcom/sonyericsson/conversations/ui/PileViewItem;

.field final synthetic val$thisIsTheFirstChild:Z

.field final synthetic val$tuck:Landroid/view/animation/AnimationSet;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/PileView;Lcom/sonyericsson/conversations/ui/PileViewItem;Landroid/view/animation/AnimationSet;Z)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/PileView$6;->this$0:Lcom/sonyericsson/conversations/ui/PileView;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/PileView$6;->val$child:Lcom/sonyericsson/conversations/ui/PileViewItem;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/PileView$6;->val$tuck:Landroid/view/animation/AnimationSet;

    iput-boolean p4, p0, Lcom/sonyericsson/conversations/ui/PileView$6;->val$thisIsTheFirstChild:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView$6;->val$child:Lcom/sonyericsson/conversations/ui/PileViewItem;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/PileView$6;->val$tuck:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 545
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/PileView$6;->val$thisIsTheFirstChild:Z

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView$6;->this$0:Lcom/sonyericsson/conversations/ui/PileView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/PileView;->setState(I)V

    .line 548
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 549
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 550
    return-void
.end method
