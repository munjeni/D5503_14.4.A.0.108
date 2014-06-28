.class Lcom/sonyericsson/conversations/ui/PileView$5$1;
.super Ljava/lang/Object;
.source "PileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/PileView$5;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/PileView$5;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/PileView$5;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/PileView$5$1;->this$1:Lcom/sonyericsson/conversations/ui/PileView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView$5$1;->this$1:Lcom/sonyericsson/conversations/ui/PileView$5;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/PileView$5;->this$0:Lcom/sonyericsson/conversations/ui/PileView;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/PileView;->setState(I)V

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView$5$1;->this$1:Lcom/sonyericsson/conversations/ui/PileView$5;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/PileView$5;->val$me:Lcom/sonyericsson/conversations/ui/PileView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/PileView$5$1;->this$1:Lcom/sonyericsson/conversations/ui/PileView$5;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/PileView$5;->val$fade:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 531
    return-void
.end method
