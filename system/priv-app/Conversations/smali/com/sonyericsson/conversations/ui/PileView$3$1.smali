.class Lcom/sonyericsson/conversations/ui/PileView$3$1;
.super Ljava/lang/Object;
.source "PileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/PileView$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/PileView$3;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/PileView$3;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/PileView$3$1;->this$1:Lcom/sonyericsson/conversations/ui/PileView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/PileView$3$1;->this$1:Lcom/sonyericsson/conversations/ui/PileView$3;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/PileView$3;->this$0:Lcom/sonyericsson/conversations/ui/PileView;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/PileView;->setState(I)V

    .line 444
    return-void
.end method
