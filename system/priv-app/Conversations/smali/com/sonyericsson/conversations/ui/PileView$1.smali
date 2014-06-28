.class Lcom/sonyericsson/conversations/ui/PileView$1;
.super Ljava/lang/Object;
.source "PileView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/PileView;->getPreExpansionListener(Ljava/lang/Runnable;)Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/PileView;

.field final synthetic val$launchExpansion:Ljava/lang/Runnable;

.field final synthetic val$me:Lcom/sonyericsson/conversations/ui/PileView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/PileView;Lcom/sonyericsson/conversations/ui/PileView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/PileView$1;->this$0:Lcom/sonyericsson/conversations/ui/PileView;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/PileView$1;->val$me:Lcom/sonyericsson/conversations/ui/PileView;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/PileView$1;->val$launchExpansion:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView$1;->val$me:Lcom/sonyericsson/conversations/ui/PileView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/PileView$1;->val$launchExpansion:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 380
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 381
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 382
    return-void
.end method
